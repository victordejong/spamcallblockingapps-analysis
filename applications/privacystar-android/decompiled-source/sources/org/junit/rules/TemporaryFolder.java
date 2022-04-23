package org.junit.rules;

import java.io.File;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/junit/rules/TemporaryFolder.class */
public class TemporaryFolder extends ExternalResource {
    private File folder;
    private final File parentFolder;

    public TemporaryFolder() {
        this(null);
    }

    public TemporaryFolder(File file) {
        this.parentFolder = file;
    }

    private File createTemporaryFolderIn(File file) throws IOException {
        File createTempFile = File.createTempFile("junit", "", file);
        createTempFile.delete();
        createTempFile.mkdir();
        return createTempFile;
    }

    private boolean isLastElementInArray(int i, String[] strArr) {
        boolean z = true;
        if (i != strArr.length - 1) {
            z = false;
        }
        return z;
    }

    private void recursiveDelete(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }

    private void validateFolderName(String str) throws IOException {
        if (new File(str).getParent() != null) {
            throw new IOException("Folder name cannot consist of multiple path components separated by a file separator. Please use newFolder('MyParentFolder','MyFolder') to create hierarchies of folders");
        }
    }

    @Override // org.junit.rules.ExternalResource
    protected void after() {
        delete();
    }

    @Override // org.junit.rules.ExternalResource
    protected void before() throws Throwable {
        create();
    }

    public void create() throws IOException {
        this.folder = createTemporaryFolderIn(this.parentFolder);
    }

    public void delete() {
        if (this.folder != null) {
            recursiveDelete(this.folder);
        }
    }

    public File getRoot() {
        if (this.folder != null) {
            return this.folder;
        }
        throw new IllegalStateException("the temporary folder has not yet been created");
    }

    public File newFile() throws IOException {
        return File.createTempFile("junit", null, getRoot());
    }

    public File newFile(String str) throws IOException {
        File file = new File(getRoot(), str);
        if (file.createNewFile()) {
            return file;
        }
        throw new IOException("a file with the name '" + str + "' already exists in the test folder");
    }

    public File newFolder() throws IOException {
        return createTemporaryFolderIn(getRoot());
    }

    public File newFolder(String str) throws IOException {
        return newFolder(str);
    }

    public File newFolder(String... strArr) throws IOException {
        File root = getRoot();
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            validateFolderName(str);
            root = new File(root, str);
            if (!root.mkdir() && isLastElementInArray(i, strArr)) {
                throw new IOException("a folder with the name '" + str + "' already exists");
            }
        }
        return root;
    }
}
