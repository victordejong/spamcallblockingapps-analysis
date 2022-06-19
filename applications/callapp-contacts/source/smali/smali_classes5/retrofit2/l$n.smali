.class final Lretrofit2/l$n;
.super Lretrofit2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/l<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lretrofit2/l;-><init>()V

    .line 61
    iput-object p1, p0, Lretrofit2/l$n;->a:Ljava/lang/reflect/Method;

    .line 62
    iput p2, p0, Lretrofit2/l$n;->b:I

    return-void
.end method


# virtual methods
.method final a(Lretrofit2/n;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1093
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lretrofit2/n;->b:Ljava/lang/String;

    return-void

    .line 67
    :cond_0
    iget-object p1, p0, Lretrofit2/l$n;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Lretrofit2/l$n;->b:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@Url parameter is null."

    invoke-static {p1, p2, v1, v0}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
