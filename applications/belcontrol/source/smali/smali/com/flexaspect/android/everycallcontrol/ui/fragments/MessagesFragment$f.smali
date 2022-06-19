.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
