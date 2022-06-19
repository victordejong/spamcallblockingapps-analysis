.class public Ld2/a4;
.super Landroid/webkit/WebMessagePort$WebMessageCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/a4;->a:Ld2/x3;

    invoke-direct {p0}, Landroid/webkit/WebMessagePort$WebMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/webkit/WebMessagePort;Landroid/webkit/WebMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/webkit/WebMessage;->getData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, ":"

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length p2, p1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iget-object v0, p0, Ld2/a4;->a:Ld2/x3;

    .line 4
    iget-object v0, v0, Ld2/x3;->k:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Ld2/a4;->a:Ld2/x3;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ld2/e4;->k(Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    .line 9
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p2

    invoke-virtual {p2}, Ld2/f1;->q()Ld2/u0;

    move-result-object p2

    invoke-virtual {p2, p1}, Ld2/u0;->f(Ld2/f4;)V

    :cond_0
    return-void
.end method
