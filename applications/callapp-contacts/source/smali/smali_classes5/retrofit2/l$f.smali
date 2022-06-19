.class final Lretrofit2/l$f;
.super Lretrofit2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/l<",
        "Lokhttp3/Headers;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lretrofit2/l;-><init>()V

    .line 236
    iput-object p1, p0, Lretrofit2/l$f;->a:Ljava/lang/reflect/Method;

    .line 237
    iput p2, p0, Lretrofit2/l$f;->b:I

    return-void
.end method


# virtual methods
.method final synthetic a(Lretrofit2/n;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    check-cast p2, Lokhttp3/Headers;

    if-eqz p2, :cond_0

    .line 2109
    iget-object p1, p1, Lretrofit2/n;->d:Lokhttp3/Headers$Builder;

    invoke-virtual {p1, p2}, Lokhttp3/Headers$Builder;->addAll(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    return-void

    .line 1242
    :cond_0
    iget-object p1, p0, Lretrofit2/l$f;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Lretrofit2/l$f;->b:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Headers parameter must not be null."

    invoke-static {p1, p2, v1, v0}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
