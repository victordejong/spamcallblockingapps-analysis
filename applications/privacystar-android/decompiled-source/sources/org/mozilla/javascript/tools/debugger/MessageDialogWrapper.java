package org.mozilla.javascript.tools.debugger;

import java.awt.Component;
import javax.swing.JOptionPane;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/MessageDialogWrapper.class */
class MessageDialogWrapper {
    MessageDialogWrapper() {
    }

    public static void showMessageDialog(Component component, String str, String str2, int i) {
        String str3 = str;
        if (str.length() > 60) {
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                char charAt = str.charAt(i2);
                sb.append(charAt);
                int i4 = i3;
                if (Character.isWhitespace(charAt)) {
                    int i5 = i2 + 1;
                    while (i5 < length && !Character.isWhitespace(str.charAt(i5))) {
                        i5++;
                    }
                    i4 = i3;
                    if (i5 < length) {
                        i4 = i3;
                        if ((i5 - i2) + i3 > 60) {
                            sb.append('\n');
                            i4 = 0;
                        }
                    }
                }
                i2++;
                i3 = i4 + 1;
            }
            str3 = sb.toString();
        }
        JOptionPane.showMessageDialog(component, str3, str2, i);
    }
}
