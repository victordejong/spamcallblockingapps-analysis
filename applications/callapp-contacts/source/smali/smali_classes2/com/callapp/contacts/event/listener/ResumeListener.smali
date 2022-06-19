.class public interface abstract Lcom/callapp/contacts/event/listener/ResumeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/event/listener/ResumeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-object v0, Lcom/callapp/contacts/event/listener/-$$Lambda$ResumeListener$N0LdjikDwU2dpyvN8L9Sh50Uqko;->INSTANCE:Lcom/callapp/contacts/event/listener/-$$Lambda$ResumeListener$N0LdjikDwU2dpyvN8L9Sh50Uqko;

    sput-object v0, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onResume()V
.end method
