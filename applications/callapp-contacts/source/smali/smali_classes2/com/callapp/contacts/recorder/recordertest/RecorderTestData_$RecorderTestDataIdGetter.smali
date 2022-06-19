.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_$RecorderTestDataIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecorderTestDataIdGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/c<",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)J
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 133
    check-cast p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 1137
    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    return-wide v0
.end method
