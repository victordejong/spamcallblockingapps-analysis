.class public Lcom/callapp/contacts/activity/records/StickyCallRecorder;
.super Lcom/callapp/contacts/widget/sticky/BaseStickyView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/sticky/BaseStickyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/StickyCallRecorder;)Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->a:Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;

    return-object p0
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    const v0, 0x7f0d007b

    return v0
.end method

.method public setListener(Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->a:Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;

    return-void
.end method
