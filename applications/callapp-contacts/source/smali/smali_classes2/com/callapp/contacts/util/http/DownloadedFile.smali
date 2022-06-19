.class public Lcom/callapp/contacts/util/http/DownloadedFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/File;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/util/http/DownloadedFile;->a:Ljava/io/File;

    .line 12
    iput-boolean p2, p0, Lcom/callapp/contacts/util/http/DownloadedFile;->b:Z

    return-void
.end method


# virtual methods
.method public isFullyDownloaded()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/DownloadedFile;->b:Z

    return v0
.end method
