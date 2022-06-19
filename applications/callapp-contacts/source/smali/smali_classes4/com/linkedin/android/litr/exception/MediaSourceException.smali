.class public Lcom/linkedin/android/litr/exception/MediaSourceException;
.super Lcom/linkedin/android/litr/exception/MediaTransformationException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/android/litr/exception/MediaSourceException$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/linkedin/android/litr/exception/MediaSourceException$a;

.field private final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/linkedin/android/litr/exception/MediaSourceException$a;Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p3}, Lcom/linkedin/android/litr/exception/MediaTransformationException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    iput-object p1, p0, Lcom/linkedin/android/litr/exception/MediaSourceException;->b:Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    .line 27
    iput-object p2, p0, Lcom/linkedin/android/litr/exception/MediaSourceException;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create media source due to a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkedin/android/litr/exception/MediaSourceException;->b:Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    invoke-static {v1}, Lcom/linkedin/android/litr/exception/MediaSourceException$a;->access$000(Lcom/linkedin/android/litr/exception/MediaSourceException$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/linkedin/android/litr/exception/MediaTransformationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Failed to create media source due to a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linkedin/android/litr/exception/MediaSourceException;->b:Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    .line 55
    invoke-static {v2}, Lcom/linkedin/android/litr/exception/MediaSourceException$a;->access$000(Lcom/linkedin/android/litr/exception/MediaSourceException$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkedin/android/litr/exception/MediaSourceException;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
