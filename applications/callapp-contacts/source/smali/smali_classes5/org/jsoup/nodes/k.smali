.class public final Lorg/jsoup/nodes/k;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# instance fields
.field private final a:Lorg/jsoup/select/c;


# direct methods
.method public constructor <init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 18
    new-instance p1, Lorg/jsoup/select/c;

    invoke-direct {p1}, Lorg/jsoup/select/c;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/select/c;

    return-void
.end method


# virtual methods
.method public final b(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/k;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/select/c;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/c;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final synthetic c()Lorg/jsoup/nodes/m;
    .locals 1

    .line 2118
    invoke-super {p0}, Lorg/jsoup/nodes/h;->d()Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/k;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3118
    invoke-super {p0}, Lorg/jsoup/nodes/h;->d()Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/k;

    return-object v0
.end method

.method public final bridge synthetic d()Lorg/jsoup/nodes/h;
    .locals 1

    .line 1118
    invoke-super {p0}, Lorg/jsoup/nodes/h;->d()Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/k;

    return-object v0
.end method

.method protected final g(Lorg/jsoup/nodes/m;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->g(Lorg/jsoup/nodes/m;)V

    .line 52
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/select/c;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/c;->remove(Ljava/lang/Object;)Z

    return-void
.end method
