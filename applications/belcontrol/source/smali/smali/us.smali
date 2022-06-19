.class public final Lus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lls$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lht;

.field public final c:Lls$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lht;Lls$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lus;->a:Landroid/content/Context;

    iput-object p2, p0, Lus;->b:Lht;

    iput-object p3, p0, Lus;->c:Lls$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lus;-><init>(Landroid/content/Context;Ljava/lang/String;Lht;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lht;)V
    .locals 1

    new-instance v0, Lws;

    invoke-direct {v0, p2, p3}, Lws;-><init>(Ljava/lang/String;Lht;)V

    invoke-direct {p0, p1, p3, v0}, Lus;-><init>(Landroid/content/Context;Lht;Lls$a;)V

    return-void
.end method


# virtual methods
.method public a()Lts;
    .locals 3

    new-instance v0, Lts;

    iget-object v1, p0, Lus;->a:Landroid/content/Context;

    iget-object v2, p0, Lus;->c:Lls$a;

    invoke-interface {v2}, Lls$a;->createDataSource()Lls;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lts;-><init>(Landroid/content/Context;Lls;)V

    iget-object v1, p0, Lus;->b:Lht;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lts;->b(Lht;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Lls;
    .locals 1

    invoke-virtual {p0}, Lus;->a()Lts;

    move-result-object v0

    return-object v0
.end method
