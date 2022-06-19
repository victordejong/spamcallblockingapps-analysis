.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$e;->a:[I

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->r0(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ll81;

    invoke-direct {p1}, Ll81;-><init>()V

    invoke-virtual {p1}, Ll81;->H()Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->s0(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lfa1$f;->e:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;->t0(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lfa1$d;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance p1, Ll81;

    invoke-direct {p1}, Ll81;-><init>()V

    invoke-virtual {p1}, Ll81;->J()Z

    :goto_0
    return-void
.end method
