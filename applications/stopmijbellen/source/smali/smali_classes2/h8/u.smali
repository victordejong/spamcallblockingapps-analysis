.class public Lh8/u;
.super Lb9/a;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb9/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/widget/ImageView;Landroid/widget/CheckBox;ZLandroid/widget/ImageView;Landroid/widget/CheckBox;ZZ)V
    .locals 1

    if-eqz p3, :cond_0

    const v0, 0x7f080112

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f080113

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    if-eqz p6, :cond_1

    const v0, 0x7f080114

    .line 3
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f080115

    .line 4
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    if-eqz p7, :cond_4

    .line 5
    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    invoke-virtual {p5, p6}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 p3, 0x0

    const/16 p6, 0x8

    if-eqz p7, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    .line 7
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz p7, :cond_3

    goto :goto_3

    :cond_3
    const/16 p3, 0x8

    .line 8
    :goto_3
    invoke-virtual {p5, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 9
    :cond_4
    new-instance p2, Lh8/u$a;

    invoke-direct {p2, p0}, Lh8/u$a;-><init>(Lh8/u;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    sget-object p1, Lh8/t;->a:Lh8/t;

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
