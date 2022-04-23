package org.mozilla.javascript.tools.debugger;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.swing.table.AbstractTableModel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/MyTableModel.class */
public class MyTableModel extends AbstractTableModel {
    private static final long serialVersionUID = 2971618907207577000L;
    private SwingGui debugGui;
    private List<String> expressions = Collections.synchronizedList(new ArrayList());
    private List<String> values = Collections.synchronizedList(new ArrayList());

    public MyTableModel(SwingGui swingGui) {
        this.debugGui = swingGui;
        this.expressions.add("");
        this.values.add("");
    }

    public int getColumnCount() {
        return 2;
    }

    public String getColumnName(int i) {
        switch (i) {
            case 0:
                return "Expression";
            case 1:
                return "Value";
            default:
                return null;
        }
    }

    public int getRowCount() {
        return this.expressions.size();
    }

    public Object getValueAt(int i, int i2) {
        switch (i2) {
            case 0:
                return this.expressions.get(i);
            case 1:
                return this.values.get(i);
            default:
                return "";
        }
    }

    public boolean isCellEditable(int i, int i2) {
        return true;
    }

    public void setValueAt(Object obj, int i, int i2) {
        switch (i2) {
            case 0:
                String obj2 = obj.toString();
                this.expressions.set(i, obj2);
                String str = "";
                if (obj2.length() > 0) {
                    String eval = this.debugGui.dim.eval(obj2);
                    str = eval;
                    if (eval == null) {
                        str = "";
                    }
                }
                this.values.set(i, str);
                updateModel();
                int i3 = i + 1;
                if (i3 == this.expressions.size()) {
                    this.expressions.add("");
                    this.values.add("");
                    fireTableRowsInserted(i3, i3);
                    return;
                }
                return;
            case 1:
                fireTableDataChanged();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateModel() {
        String str;
        for (int i = 0; i < this.expressions.size(); i++) {
            String str2 = this.expressions.get(i);
            if (str2.length() > 0) {
                String eval = this.debugGui.dim.eval(str2);
                str = eval;
                if (eval == null) {
                    str = "";
                }
            } else {
                str = "";
            }
            this.values.set(i, str.replace('\n', ' '));
        }
        fireTableDataChanged();
    }
}
