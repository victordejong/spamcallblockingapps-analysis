.class public interface abstract Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;",
            "Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/callapp/contacts/manager/permission/-$$Lambda$GorUM07iF-eqzLr5bYAIfKdMJp4;->INSTANCE:Lcom/callapp/contacts/manager/permission/-$$Lambda$GorUM07iF-eqzLr5bYAIfKdMJp4;

    sput-object v0, Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onPermissionAllowed(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
.end method
