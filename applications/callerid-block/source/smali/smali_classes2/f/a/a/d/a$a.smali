.class Lf/a/a/d/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/d/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lf/a/a/d/a;


# direct methods
.method constructor <init>(Lf/a/a/d/a;I)V
    .locals 0

    iput-object p1, p0, Lf/a/a/d/a$a;->c:Lf/a/a/d/a;

    iput p2, p0, Lf/a/a/d/a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lf/a/a/d/a$a;->c:Lf/a/a/d/a;

    iget-object v0, p1, Lf/a/a/d/a;->c:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    iget v1, p0, Lf/a/a/d/a$a;->b:I

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-interface {v0, p1}, Lhani/momanii/supernova_emoji_library/Helper/a$b;->a(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V

    return-void
.end method
