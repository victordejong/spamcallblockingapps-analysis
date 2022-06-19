.class public Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->h(Ljava/lang/String;Ljava/util/EnumSet;Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$a;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$a;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-virtual {v0}, Landroid/view/View;->showContextMenu()Z

    return-void
.end method
