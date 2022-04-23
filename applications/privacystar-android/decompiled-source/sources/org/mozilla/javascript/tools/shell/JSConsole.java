package org.mozilla.javascript.tools.shell;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import javax.swing.ButtonGroup;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JRadioButtonMenuItem;
import javax.swing.JScrollPane;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;
import javax.swing.filechooser.FileFilter;
import org.mozilla.javascript.SecurityUtilities;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/JSConsole.class */
public class JSConsole extends JFrame implements ActionListener {
    static final long serialVersionUID = 2551225560631876300L;
    private File CWD;
    private ConsoleTextArea consoleTextArea;
    private JFileChooser dlg;

    public JSConsole(String[] strArr) {
        super("Rhino JavaScript Console");
        JMenuBar jMenuBar = new JMenuBar();
        createFileChooser();
        String[] strArr2 = {"Load...", "Exit"};
        String[] strArr3 = {"Cut", "Copy", "Paste"};
        String[] strArr4 = {"Metal", "Windows", "Motif"};
        JMenu jMenu = new JMenu("File");
        jMenu.setMnemonic('F');
        JMenu jMenu2 = new JMenu("Edit");
        jMenu2.setMnemonic('E');
        JMenu jMenu3 = new JMenu("Platform");
        jMenu3.setMnemonic('P');
        for (int i = 0; i < strArr2.length; i++) {
            JMenuItem jMenuItem = new JMenuItem(strArr2[i], new char[]{'L', 'X'}[i]);
            jMenuItem.setActionCommand(new String[]{"Load", "Exit"}[i]);
            jMenuItem.addActionListener(this);
            jMenu.add(jMenuItem);
        }
        for (int i2 = 0; i2 < strArr3.length; i2++) {
            JMenuItem jMenuItem2 = new JMenuItem(strArr3[i2], new char[]{'T', 'C', 'P'}[i2]);
            jMenuItem2.addActionListener(this);
            jMenu2.add(jMenuItem2);
        }
        ButtonGroup buttonGroup = new ButtonGroup();
        for (int i3 = 0; i3 < strArr4.length; i3++) {
            JRadioButtonMenuItem jRadioButtonMenuItem = new JRadioButtonMenuItem(strArr4[i3], new boolean[]{true, false, false}[i3]);
            buttonGroup.add(jRadioButtonMenuItem);
            jRadioButtonMenuItem.addActionListener(this);
            jMenu3.add(jRadioButtonMenuItem);
        }
        jMenuBar.add(jMenu);
        jMenuBar.add(jMenu2);
        jMenuBar.add(jMenu3);
        setJMenuBar(jMenuBar);
        this.consoleTextArea = new ConsoleTextArea(strArr);
        setContentPane(new JScrollPane(this.consoleTextArea));
        this.consoleTextArea.setRows(24);
        this.consoleTextArea.setColumns(80);
        addWindowListener(new WindowAdapter() { // from class: org.mozilla.javascript.tools.shell.JSConsole.2
            public void windowClosing(WindowEvent windowEvent) {
                System.exit(0);
            }
        });
        pack();
        setVisible(true);
        Main.setIn(this.consoleTextArea.getIn());
        Main.setOut(this.consoleTextArea.getOut());
        Main.setErr(this.consoleTextArea.getErr());
        Main.main(strArr);
    }

    public static void main(String[] strArr) {
        new JSConsole(strArr);
    }

    public void actionPerformed(ActionEvent actionEvent) {
        String actionCommand = actionEvent.getActionCommand();
        if (actionCommand.equals("Load")) {
            String chooseFile = chooseFile();
            if (chooseFile != null) {
                String replace = chooseFile.replace('\\', '/');
                ConsoleTextArea consoleTextArea = this.consoleTextArea;
                consoleTextArea.eval("load(\"" + replace + "\");");
            }
        } else if (actionCommand.equals("Exit")) {
            System.exit(0);
        } else if (actionCommand.equals("Cut")) {
            this.consoleTextArea.cut();
        } else if (actionCommand.equals("Copy")) {
            this.consoleTextArea.copy();
        } else if (actionCommand.equals("Paste")) {
            this.consoleTextArea.paste();
        } else {
            String str = actionCommand.equals("Metal") ? "javax.swing.plaf.metal.MetalLookAndFeel" : actionCommand.equals("Windows") ? "com.sun.java.swing.plaf.windows.WindowsLookAndFeel" : actionCommand.equals("Motif") ? "com.sun.java.swing.plaf.motif.MotifLookAndFeel" : null;
            if (str != null) {
                try {
                    UIManager.setLookAndFeel(str);
                    SwingUtilities.updateComponentTreeUI(this);
                    this.consoleTextArea.postUpdateUI();
                    createFileChooser();
                } catch (Exception e) {
                    JOptionPane.showMessageDialog(this, e.getMessage(), "Platform", 0);
                }
            }
        }
    }

    public String chooseFile() {
        String systemProperty;
        if (this.CWD == null && (systemProperty = SecurityUtilities.getSystemProperty("user.dir")) != null) {
            this.CWD = new File(systemProperty);
        }
        if (this.CWD != null) {
            this.dlg.setCurrentDirectory(this.CWD);
        }
        this.dlg.setDialogTitle("Select a file to load");
        if (this.dlg.showOpenDialog(this) != 0) {
            return null;
        }
        String path = this.dlg.getSelectedFile().getPath();
        this.CWD = new File(this.dlg.getSelectedFile().getParent());
        return path;
    }

    public void createFileChooser() {
        this.dlg = new JFileChooser();
        this.dlg.addChoosableFileFilter(new FileFilter() { // from class: org.mozilla.javascript.tools.shell.JSConsole.1
            public boolean accept(File file) {
                if (file.isDirectory()) {
                    return true;
                }
                String name = file.getName();
                int lastIndexOf = name.lastIndexOf(46);
                return lastIndexOf > 0 && lastIndexOf < name.length() - 1 && name.substring(lastIndexOf + 1).toLowerCase().equals("js");
            }

            public String getDescription() {
                return "JavaScript Files (*.js)";
            }
        });
    }
}
