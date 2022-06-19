.class public Lc/d/a/h0/b$a;
.super Ljava/lang/Object;
.source "FileDownloadRandomAccessFile.java"

# interfaces
.implements Lc/d/a/i0/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/h0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lc/d/a/h0/a;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/h0/b;

    invoke-direct {v0, p1}, Lc/d/a/h0/b;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
