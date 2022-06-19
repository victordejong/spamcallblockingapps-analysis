.class public interface abstract Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;",
            "Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract toggleDialpad(ZZII)V
.end method
