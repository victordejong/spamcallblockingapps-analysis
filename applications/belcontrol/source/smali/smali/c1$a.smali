.class public Lc1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1;


# direct methods
.method public constructor <init>(Lc1;)V
    .locals 0

    iput-object p1, p0, Lc1$a;->a:Lc1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lc1$a;->a:Lc1;

    invoke-virtual {v0}, Lc1;->e()V

    return-void
.end method
