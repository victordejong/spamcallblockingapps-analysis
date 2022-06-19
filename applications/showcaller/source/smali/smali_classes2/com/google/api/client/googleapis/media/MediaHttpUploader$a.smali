.class Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;
.super Ljava/lang/Object;
.source "MediaHttpUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/media/MediaHttpUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/api/client/http/b;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;->a:Lcom/google/api/client/http/b;

    .line 3
    iput-object p2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Lcom/google/api/client/http/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;->a:Lcom/google/api/client/http/b;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;->b:Ljava/lang/String;

    return-object v0
.end method
