.class public Lx51$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:Landroid/widget/CheckBox;

.field public final synthetic c:Lx51;


# direct methods
.method public constructor <init>(Lx51;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lx51$b;->c:Lx51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a02e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lx51$b;->b:Landroid/widget/CheckBox;

    new-instance v1, Lx51$b$a;

    invoke-direct {v1, p0, p1}, Lx51$b$a;-><init>(Lx51$b;Lx51;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lx51;Landroid/view/View;Lx51$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx51$b;-><init>(Lx51;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lx51$b;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lx51$b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx51$b;->c:Lx51;

    invoke-static {v0}, Lx51;->a(Lx51;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lx51$b;->c:Lx51;

    invoke-static {v0}, Lx51;->a(Lx51;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
