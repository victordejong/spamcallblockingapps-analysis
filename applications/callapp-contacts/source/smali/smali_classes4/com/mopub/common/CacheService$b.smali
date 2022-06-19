.class final Lcom/mopub/common/CacheService$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/CacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 235
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/mopub/common/CacheService$b;->a:Ljava/lang/String;

    .line 237
    iput-object p2, p0, Lcom/mopub/common/CacheService$b;->b:[B

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1242
    iget-object p1, p0, Lcom/mopub/common/CacheService$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/common/CacheService$b;->b:[B

    invoke-static {p1, v0}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    const/4 p1, 0x0

    return-object p1
.end method
