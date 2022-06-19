.class public final Lcom/squareup/okhttp/e$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lokio/ByteString;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/e$b;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/e$b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/e$b;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/squareup/okhttp/e;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/e;-><init>(Lcom/squareup/okhttp/e$b;Lcom/squareup/okhttp/e$a;)V

    return-object v0
.end method
