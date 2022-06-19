.class public interface abstract Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;",
            "Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/callapp/contacts/manager/permission/-$$Lambda$7PDzWy-7nIKUtwlQ7P0IrQW3sDA;->INSTANCE:Lcom/callapp/contacts/manager/permission/-$$Lambda$7PDzWy-7nIKUtwlQ7P0IrQW3sDA;

    sput-object v0, Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onPermissionDenied(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
.end method
