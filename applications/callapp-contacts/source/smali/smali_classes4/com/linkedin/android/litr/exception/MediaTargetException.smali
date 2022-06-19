.class public Lcom/linkedin/android/litr/exception/MediaTargetException;
.super Lcom/linkedin/android/litr/exception/MediaTransformationException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/android/litr/exception/MediaTargetException$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/linkedin/android/litr/exception/MediaTargetException$a;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/linkedin/android/litr/exception/MediaTargetException$a;Landroid/net/Uri;ILjava/lang/Throwable;)V
    .locals 0

    .line 25
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkedin/android/litr/exception/MediaTargetException;-><init>(Lcom/linkedin/android/litr/exception/MediaTargetException$a;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/linkedin/android/litr/exception/MediaTargetException$a;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p4}, Lcom/linkedin/android/litr/exception/MediaTransformationException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    iput-object p1, p0, Lcom/linkedin/android/litr/exception/MediaTargetException;->b:Lcom/linkedin/android/litr/exception/MediaTargetException$a;

    .line 31
    iput-object p2, p0, Lcom/linkedin/android/litr/exception/MediaTargetException;->c:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/linkedin/android/litr/exception/MediaTargetException;->d:I

    return-void
.end method


# virtual methods
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

    iget-object v2, p0, Lcom/linkedin/android/litr/exception/MediaTargetException;->b:Lcom/linkedin/android/litr/exception/MediaTargetException$a;

    .line 55
    invoke-static {v2}, Lcom/linkedin/android/litr/exception/MediaTargetException$a;->access$000(Lcom/linkedin/android/litr/exception/MediaTargetException$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Output file path or Uri encoded string: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linkedin/android/litr/exception/MediaTargetException;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "MediaMuxer output format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkedin/android/litr/exception/MediaTargetException;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
