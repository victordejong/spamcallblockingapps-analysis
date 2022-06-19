.class Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$b;
.super Ljava/lang/Object;
.source "CallScreenSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/allinone/callerid/d/f/f;->n(Z)V

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "callscreen_close"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
