.class public final Lzy$b$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzy$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lxy;

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lxy;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy$b$c;->a:Lxy;

    iput p2, p0, Lzy$b$c;->b:I

    iput-boolean p3, p0, Lzy$b$c;->c:Z

    iput-boolean p4, p0, Lzy$b$c;->d:Z

    iput-boolean p5, p0, Lzy$b$c;->e:Z

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lzy$b$c;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "mrDescriptor"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lxy;->e(Landroid/os/Bundle;)Lxy;

    move-result-object v2

    const/4 v0, 0x1

    const-string v1, "selectionState"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "isUnselectable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "isGroupable"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v0, "isTransferable"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    new-instance p0, Lzy$b$c;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lzy$b$c;-><init>(Lxy;IZZZ)V

    return-object p0
.end method


# virtual methods
.method public b()Lxy;
    .locals 1

    iget-object v0, p0, Lzy$b$c;->a:Lxy;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lzy$b$c;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lzy$b$c;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lzy$b$c;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lzy$b$c;->c:Z

    return v0
.end method

.method public g()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lzy$b$c;->f:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lzy$b$c;->f:Landroid/os/Bundle;

    iget-object v1, p0, Lzy$b$c;->a:Lxy;

    invoke-virtual {v1}, Lxy;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mrDescriptor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lzy$b$c;->f:Landroid/os/Bundle;

    iget v1, p0, Lzy$b$c;->b:I

    const-string v2, "selectionState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lzy$b$c;->f:Landroid/os/Bundle;

    iget-boolean v1, p0, Lzy$b$c;->c:Z

    const-string v2, "isUnselectable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lzy$b$c;->f:Landroid/os/Bundle;

    iget-boolean v1, p0, Lzy$b$c;->d:Z

    const-string v2, "isGroupable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lzy$b$c;->f:Landroid/os/Bundle;

    iget-boolean v1, p0, Lzy$b$c;->e:Z

    const-string v2, "isTransferable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lzy$b$c;->f:Landroid/os/Bundle;

    return-object v0
.end method
