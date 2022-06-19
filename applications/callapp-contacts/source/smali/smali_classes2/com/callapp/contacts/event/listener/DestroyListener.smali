.class public interface abstract Lcom/callapp/contacts/event/listener/DestroyListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/event/listener/DestroyListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-object v0, Lcom/callapp/contacts/event/listener/-$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H--zpVts22A;->INSTANCE:Lcom/callapp/contacts/event/listener/-$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H--zpVts22A;

    sput-object v0, Lcom/callapp/contacts/event/listener/DestroyListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onDestroy()V
.end method
