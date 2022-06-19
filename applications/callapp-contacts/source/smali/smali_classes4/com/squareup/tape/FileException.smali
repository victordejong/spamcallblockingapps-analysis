.class public Lcom/squareup/tape/FileException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Ljava/io/File;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iput-object p3, p0, Lcom/squareup/tape/FileException;->a:Ljava/io/File;

    return-void
.end method
