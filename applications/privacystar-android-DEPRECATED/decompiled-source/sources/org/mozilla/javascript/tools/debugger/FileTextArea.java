package org.mozilla.javascript.tools.debugger;

import java.awt.Font;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import javax.swing.JTextArea;
import javax.swing.event.PopupMenuEvent;
import javax.swing.event.PopupMenuListener;
import javax.swing.text.BadLocationException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/FileTextArea.class */
public class FileTextArea extends JTextArea implements ActionListener, PopupMenuListener, KeyListener, MouseListener {
    private static final long serialVersionUID = -25032065448563720L;
    private FilePopupMenu popup = new FilePopupMenu(this);

    /* renamed from: w */
    private FileWindow f841w;

    public FileTextArea(FileWindow fileWindow) {
        this.f841w = fileWindow;
        this.popup.addPopupMenuListener(this);
        addMouseListener(this);
        addKeyListener(this);
        setFont(new Font("Monospaced", 0, 12));
    }

    private void checkPopup(MouseEvent mouseEvent) {
        if (mouseEvent.isPopupTrigger()) {
            this.popup.show(this, mouseEvent.getX(), mouseEvent.getY());
        }
    }

    public void actionPerformed(ActionEvent actionEvent) {
        int i;
        int viewToModel = viewToModel(new Point(this.popup.f839x, this.popup.f840y));
        this.popup.setVisible(false);
        String actionCommand = actionEvent.getActionCommand();
        try {
            i = getLineOfOffset(viewToModel);
        } catch (Exception e) {
            i = -1;
        }
        if (actionCommand.equals("Set Breakpoint")) {
            this.f841w.setBreakPoint(i + 1);
        } else if (actionCommand.equals("Clear Breakpoint")) {
            this.f841w.clearBreakPoint(i + 1);
        } else if (actionCommand.equals("Run")) {
            this.f841w.load();
        }
    }

    public void keyPressed(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 127) {
            switch (keyCode) {
                case 8:
                case 9:
                case 10:
                    break;
                default:
                    return;
            }
        }
        keyEvent.consume();
    }

    public void keyReleased(KeyEvent keyEvent) {
        keyEvent.consume();
    }

    public void keyTyped(KeyEvent keyEvent) {
        keyEvent.consume();
    }

    public void mouseClicked(MouseEvent mouseEvent) {
        checkPopup(mouseEvent);
        requestFocus();
        getCaret().setVisible(true);
    }

    public void mouseEntered(MouseEvent mouseEvent) {
    }

    public void mouseExited(MouseEvent mouseEvent) {
    }

    public void mousePressed(MouseEvent mouseEvent) {
        checkPopup(mouseEvent);
    }

    public void mouseReleased(MouseEvent mouseEvent) {
        checkPopup(mouseEvent);
    }

    public void popupMenuCanceled(PopupMenuEvent popupMenuEvent) {
    }

    public void popupMenuWillBecomeInvisible(PopupMenuEvent popupMenuEvent) {
    }

    public void popupMenuWillBecomeVisible(PopupMenuEvent popupMenuEvent) {
    }

    public void select(int i) {
        if (i >= 0) {
            try {
                int lineOfOffset = getLineOfOffset(i);
                Rectangle modelToView = modelToView(i);
                if (modelToView == null) {
                    select(i, i);
                    return;
                }
                try {
                    Rectangle modelToView2 = modelToView(getLineStartOffset(lineOfOffset + 1));
                    if (modelToView2 != null) {
                        modelToView = modelToView2;
                    }
                } catch (Exception e) {
                }
                Rectangle viewRect = getParent().getViewRect();
                if (viewRect.y + viewRect.height > modelToView.y) {
                    select(i, i);
                    return;
                }
                modelToView.y += (viewRect.height - modelToView.height) / 2;
                scrollRectToVisible(modelToView);
                select(i, i);
            } catch (BadLocationException e2) {
                select(i, i);
            }
        }
    }
}
