.class public interface abstract Lcom/callapp/contacts/manager/phone/CallDetailsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/manager/phone/CallDetailsListener;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/callapp/contacts/manager/phone/CallDetailsListener$1;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/phone/CallDetailsListener$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/phone/CallDetailsListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onCallDetailsChanged([I)V
.end method
