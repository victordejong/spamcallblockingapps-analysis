.class public Lk1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lk1;


# direct methods
.method public constructor <init>(Lk1;)V
    .locals 0

    iput-object p1, p0, Lk1$a;->c:Lk1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk1$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk1$a;->a:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lk1$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lk1$a;->c:Lk1;

    const/4 v0, 0x0

    iput-object v0, p1, Lk1;->g:Lnb;

    iget v0, p0, Lk1$a;->b:I

    invoke-static {p1, v0}, Lk1;->b(Lk1;I)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lk1$a;->c:Lk1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lk1;->a(Lk1;I)V

    iput-boolean v0, p0, Lk1$a;->a:Z

    return-void
.end method

.method public d(Lnb;I)Lk1$a;
    .locals 1

    iget-object v0, p0, Lk1$a;->c:Lk1;

    iput-object p1, v0, Lk1;->g:Lnb;

    iput p2, p0, Lk1$a;->b:I

    return-object p0
.end method
