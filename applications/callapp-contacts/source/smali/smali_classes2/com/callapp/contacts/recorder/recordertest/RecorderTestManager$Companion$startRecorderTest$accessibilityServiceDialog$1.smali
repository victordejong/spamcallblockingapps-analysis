.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion$startRecorderTest$accessibilityServiceDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "popupDone"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion$startRecorderTest$accessibilityServiceDialog$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final popupDone(Z)V
    .locals 1

    .line 72
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion$startRecorderTest$accessibilityServiceDialog$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;Ljava/lang/String;)V

    return-void
.end method
