.class public interface abstract Lcom/callapp/contacts/event/listener/PauseListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/event/listener/PauseListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-object v0, Lcom/callapp/contacts/event/listener/-$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk;->INSTANCE:Lcom/callapp/contacts/event/listener/-$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk;

    sput-object v0, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onPause()V
.end method
