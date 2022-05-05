package org.mozilla.javascript.tools.debugger;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JComponent;
import javax.swing.JInternalFrame;
import javax.swing.JScrollPane;
import javax.swing.text.BadLocationException;
import org.mozilla.javascript.tools.debugger.Dim;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/FileWindow.class */
public class FileWindow extends JInternalFrame implements ActionListener {
    private static final long serialVersionUID = -6212382604952082370L;
    private SwingGui debugGui;
    private Dim.SourceInfo sourceInfo;
    int currentPos = -1;
    FileTextArea textArea = new FileTextArea(this);

    /* renamed from: p */
    private JScrollPane f842p = new JScrollPane();
    private FileHeader fileHeader = new FileHeader(this);

    public FileWindow(SwingGui swingGui, Dim.SourceInfo sourceInfo) {
        super(SwingGui.getShortName(sourceInfo.url()), true, true, true, true);
        this.debugGui = swingGui;
        this.sourceInfo = sourceInfo;
        updateToolTip();
        this.textArea.setRows(24);
        this.textArea.setColumns(80);
        this.f842p.setViewportView(this.textArea);
        this.f842p.setRowHeaderView(this.fileHeader);
        setContentPane(this.f842p);
        pack();
        updateText(sourceInfo);
        this.textArea.select(0);
    }

    private void updateToolTip() {
        int i;
        int componentCount = getComponentCount() - 1;
        if (componentCount > 1) {
            i = 1;
        } else {
            i = componentCount;
            if (componentCount < 0) {
                return;
            }
        }
        JComponent component = getComponent(i);
        if (component != null && (component instanceof JComponent)) {
            component.setToolTipText(getUrl());
        }
    }

    public void actionPerformed(ActionEvent actionEvent) {
        String actionCommand = actionEvent.getActionCommand();
        if (!actionCommand.equals("Cut")) {
            if (actionCommand.equals("Copy")) {
                this.textArea.copy();
            } else {
                actionCommand.equals("Paste");
            }
        }
    }

    public void clearBreakPoint(int i) {
        if (this.sourceInfo.breakableLine(i) && this.sourceInfo.breakpoint(i, false)) {
            this.fileHeader.repaint();
        }
    }

    public void dispose() {
        this.debugGui.removeWindow(this);
        FileWindow.super.dispose();
    }

    public int getPosition(int i) {
        int i2;
        try {
            i2 = this.textArea.getLineStartOffset(i);
        } catch (BadLocationException e) {
            i2 = -1;
        }
        return i2;
    }

    public String getUrl() {
        return this.sourceInfo.url();
    }

    public boolean isBreakPoint(int i) {
        return this.sourceInfo.breakableLine(i) && this.sourceInfo.breakpoint(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void load() {
        String url = getUrl();
        if (url != null) {
            RunProxy runProxy = new RunProxy(this.debugGui, 2);
            runProxy.fileName = url;
            runProxy.text = this.sourceInfo.source();
            new Thread(runProxy).start();
        }
    }

    public void select(int i, int i2) {
        int length = this.textArea.getDocument().getLength();
        this.textArea.select(length, length);
        this.textArea.select(i, i2);
    }

    public void setBreakPoint(int i) {
        if (this.sourceInfo.breakableLine(i) && this.sourceInfo.breakpoint(i, true)) {
            this.fileHeader.repaint();
        }
    }

    public void setPosition(int i) {
        this.textArea.select(i);
        this.currentPos = i;
        this.fileHeader.repaint();
    }

    public void toggleBreakPoint(int i) {
        if (!isBreakPoint(i)) {
            setBreakPoint(i);
        } else {
            clearBreakPoint(i);
        }
    }

    public void updateText(Dim.SourceInfo sourceInfo) {
        this.sourceInfo = sourceInfo;
        String source = sourceInfo.source();
        if (!this.textArea.getText().equals(source)) {
            this.textArea.setText(source);
            int i = 0;
            if (this.currentPos != -1) {
                i = this.currentPos;
            }
            this.textArea.select(i);
        }
        this.fileHeader.update();
        this.fileHeader.repaint();
    }
}
