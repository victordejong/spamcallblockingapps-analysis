.class public interface abstract Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;)V
.end method
