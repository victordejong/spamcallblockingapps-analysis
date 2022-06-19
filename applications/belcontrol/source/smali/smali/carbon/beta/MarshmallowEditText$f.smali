.class public Lcarbon/beta/MarshmallowEditText$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/beta/MarshmallowEditText;->N(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/beta/MarshmallowEditText;


# direct methods
.method public constructor <init>(Lcarbon/beta/MarshmallowEditText;)V
    .locals 0

    iput-object p1, p0, Lcarbon/beta/MarshmallowEditText$f;->a:Lcarbon/beta/MarshmallowEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText$f;->a:Lcarbon/beta/MarshmallowEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcarbon/beta/MarshmallowEditText;->M(Lcarbon/beta/MarshmallowEditText;Z)Z

    return-void
.end method
