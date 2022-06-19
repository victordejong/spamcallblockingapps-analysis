.class public Lek0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lek0;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lek0;


# direct methods
.method public constructor <init>(Lek0;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lek0$a;->b:Lek0;

    iput-object p2, p0, Lek0$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lek0$a;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lek0$a;->b:Lek0;

    invoke-static {v1, v0}, Lek0;->a(Lek0;Landroid/view/View;)V

    return-void
.end method
