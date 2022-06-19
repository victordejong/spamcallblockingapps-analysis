.class final Lretrofit2/g$a;
.super Lretrofit2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/g<",
        "TResponseT;TReturnT;>;"
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/b<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/o;Lokhttp3/Call$Factory;Lretrofit2/e;Lretrofit2/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/o;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/e<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lretrofit2/b<",
            "TResponseT;TReturnT;>;)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/g;-><init>(Lretrofit2/o;Lokhttp3/Call$Factory;Lretrofit2/e;)V

    .line 144
    iput-object p4, p0, Lretrofit2/g$a;->a:Lretrofit2/b;

    return-void
.end method


# virtual methods
.method protected final a(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 148
    iget-object p2, p0, Lretrofit2/g$a;->a:Lretrofit2/b;

    invoke-interface {p2, p1}, Lretrofit2/b;->a(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
