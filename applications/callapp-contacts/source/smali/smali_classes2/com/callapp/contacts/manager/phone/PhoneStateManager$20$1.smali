.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;)V
    .locals 0

    .line 2378
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$20$1;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    .line 2385
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->P:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method
