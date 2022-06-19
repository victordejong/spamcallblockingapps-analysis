.class public Lk/g$a;
.super Lj4/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public N:Z

.field public O:I

.field public final synthetic P:Lk/g;


# direct methods
.method public constructor <init>(Lk/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/g$a;->P:Lk/g;

    invoke-direct {p0}, Lj4/w0;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lk/g$a;->N:Z

    .line 3
    iput p1, p0, Lk/g$a;->O:I

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lk/g$a;->O:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk/g$a;->O:I

    iget-object v0, p0, Lk/g$a;->P:Lk/g;

    iget-object v0, v0, Lk/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lk/g$a;->P:Lk/g;

    iget-object p1, p1, Lk/g;->d:Lm0/z;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lm0/z;->c(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lk/g$a;->O:I

    .line 5
    iput-boolean p1, p0, Lk/g$a;->N:Z

    .line 6
    iget-object v0, p0, Lk/g$a;->P:Lk/g;

    .line 7
    iput-boolean p1, v0, Lk/g;->e:Z

    :cond_1
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lk/g$a;->N:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lk/g$a;->N:Z

    .line 3
    iget-object p1, p0, Lk/g$a;->P:Lk/g;

    iget-object p1, p1, Lk/g;->d:Lm0/z;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lm0/z;->d(Landroid/view/View;)V

    :cond_1
    return-void
.end method
