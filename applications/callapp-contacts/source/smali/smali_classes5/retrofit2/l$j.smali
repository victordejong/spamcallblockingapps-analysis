.class final Lretrofit2/l$j;
.super Lretrofit2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lretrofit2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lretrofit2/e;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lretrofit2/l;-><init>()V

    const-string v0, "name == null"

    .line 123
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lretrofit2/l$j;->a:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lretrofit2/l$j;->b:Lretrofit2/e;

    .line 125
    iput-boolean p3, p0, Lretrofit2/l$j;->c:Z

    return-void
.end method


# virtual methods
.method final a(Lretrofit2/n;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/n;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lretrofit2/l$j;->b:Lretrofit2/e;

    invoke-interface {v0, p2}, Lretrofit2/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lretrofit2/l$j;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lretrofit2/l$j;->c:Z

    invoke-virtual {p1, v0, p2, v1}, Lretrofit2/n;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
