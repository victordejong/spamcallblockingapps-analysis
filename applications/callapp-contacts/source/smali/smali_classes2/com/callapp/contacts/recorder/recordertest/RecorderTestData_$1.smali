.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/h<",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getToOne(Ljava/lang/Object;)Lio/objectbox/relation/ToOne;
    .locals 0

    .line 143
    check-cast p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 1146
    iget-object p1, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->callRecorder:Lio/objectbox/relation/ToOne;

    return-object p1
.end method
