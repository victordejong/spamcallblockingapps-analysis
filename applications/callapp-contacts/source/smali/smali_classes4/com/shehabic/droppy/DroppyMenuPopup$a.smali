.class public final Lcom/shehabic/droppy/DroppyMenuPopup$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shehabic/droppy/DroppyMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/View;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shehabic/droppy/d;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/shehabic/droppy/a;

.field protected e:Z

.field protected f:Lcom/shehabic/droppy/DroppyMenuPopup$b;

.field protected g:I

.field protected h:I

.field protected i:Lcom/shehabic/droppy/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->c:Ljava/util/List;

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->e:Z

    const/16 v0, -0x14

    .line 318
    iput v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->g:I

    const/16 v0, 0x19

    .line 319
    iput v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->h:I

    .line 323
    iput-object p1, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->a:Landroid/content/Context;

    .line 324
    iput-object p2, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Lcom/shehabic/droppy/DroppyMenuPopup$a;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->c:Ljava/util/List;

    new-instance v1, Lcom/shehabic/droppy/e;

    invoke-direct {v1}, Lcom/shehabic/droppy/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/shehabic/droppy/d;)Lcom/shehabic/droppy/DroppyMenuPopup$a;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b()Lcom/shehabic/droppy/DroppyMenuPopup$a;
    .locals 1

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->e:Z

    return-object p0
.end method

.method public final c()Lcom/shehabic/droppy/DroppyMenuPopup;
    .locals 9

    .line 414
    new-instance v8, Lcom/shehabic/droppy/DroppyMenuPopup;

    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->d:Lcom/shehabic/droppy/a;

    iget-boolean v5, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->e:Z

    iget-object v7, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->f:Lcom/shehabic/droppy/DroppyMenuPopup$b;

    const/4 v6, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/shehabic/droppy/DroppyMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lcom/shehabic/droppy/a;ZILcom/shehabic/droppy/DroppyMenuPopup$b;)V

    .line 415
    iget v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->g:I

    invoke-virtual {v8, v0}, Lcom/shehabic/droppy/DroppyMenuPopup;->b(I)V

    .line 416
    iget v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->h:I

    invoke-virtual {v8, v0}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(I)V

    .line 417
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup$a;->i:Lcom/shehabic/droppy/a/a;

    invoke-virtual {v8, v0}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Lcom/shehabic/droppy/a/a;)V

    return-object v8
.end method
