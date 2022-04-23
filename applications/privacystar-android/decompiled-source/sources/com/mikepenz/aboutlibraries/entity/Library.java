package com.mikepenz.aboutlibraries.entity;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/entity/Library.class */
public class Library implements Comparable<Library> {
    private String author;
    private String authorWebsite;
    private String classPath;
    private String definedName;
    private boolean internal;
    private boolean isOpenSource;
    private String libraryDescription;
    private String libraryName;
    private String libraryVersion;
    private String libraryWebsite;
    private License license;
    private String repositoryLink;

    public Library() {
        this.definedName = "";
        this.internal = false;
        this.author = "";
        this.authorWebsite = "";
        this.libraryName = "";
        this.libraryDescription = "";
        this.libraryVersion = "";
        this.libraryWebsite = "";
        this.isOpenSource = true;
        this.repositoryLink = "";
        this.classPath = "";
    }

    public Library(String str, String str2, String str3) {
        this.definedName = "";
        this.internal = false;
        this.author = "";
        this.authorWebsite = "";
        this.libraryName = "";
        this.libraryDescription = "";
        this.libraryVersion = "";
        this.libraryWebsite = "";
        this.isOpenSource = true;
        this.repositoryLink = "";
        this.classPath = "";
        this.author = str;
        this.libraryName = str2;
        this.libraryDescription = str3;
    }

    public Library(String str, String str2, String str3, String str4) {
        this.definedName = "";
        this.internal = false;
        this.author = "";
        this.authorWebsite = "";
        this.libraryName = "";
        this.libraryDescription = "";
        this.libraryVersion = "";
        this.libraryWebsite = "";
        this.isOpenSource = true;
        this.repositoryLink = "";
        this.classPath = "";
        this.author = str;
        this.libraryName = str2;
        this.libraryDescription = str3;
        this.libraryVersion = str4;
    }

    public int compareTo(Library library) {
        return getLibraryName().compareToIgnoreCase(library.getLibraryName());
    }

    public String getAuthor() {
        return this.author;
    }

    public String getAuthorWebsite() {
        return this.authorWebsite;
    }

    public String getClassPath() {
        return this.classPath;
    }

    public String getDefinedName() {
        return this.definedName;
    }

    public String getLibraryDescription() {
        return this.libraryDescription;
    }

    public String getLibraryName() {
        return this.libraryName;
    }

    public String getLibraryVersion() {
        return this.libraryVersion;
    }

    public String getLibraryWebsite() {
        return this.libraryWebsite;
    }

    public License getLicense() {
        return this.license;
    }

    public String getRepositoryLink() {
        return this.repositoryLink;
    }

    public boolean isInternal() {
        return this.internal;
    }

    public boolean isOpenSource() {
        return this.isOpenSource;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setAuthorWebsite(String str) {
        this.authorWebsite = str;
    }

    public void setClassPath(String str) {
        this.classPath = str;
    }

    public void setDefinedName(String str) {
        this.definedName = str;
    }

    public void setInternal(boolean z) {
        this.internal = z;
    }

    public void setLibraryDescription(String str) {
        this.libraryDescription = str;
    }

    public void setLibraryName(String str) {
        this.libraryName = str;
    }

    public void setLibraryVersion(String str) {
        this.libraryVersion = str;
    }

    public void setLibraryWebsite(String str) {
        this.libraryWebsite = str;
    }

    public void setLicense(License license) {
        this.license = license;
    }

    public void setOpenSource(boolean z) {
        this.isOpenSource = z;
    }

    public void setRepositoryLink(String str) {
        this.repositoryLink = str;
    }
}
