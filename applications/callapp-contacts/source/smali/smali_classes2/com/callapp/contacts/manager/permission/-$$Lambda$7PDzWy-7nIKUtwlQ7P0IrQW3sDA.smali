.class public final synthetic Lcom/callapp/contacts/manager/permission/-$$Lambda$7PDzWy-7nIKUtwlQ7P0IrQW3sDA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/manager/permission/-$$Lambda$7PDzWy-7nIKUtwlQ7P0IrQW3sDA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/manager/permission/-$$Lambda$7PDzWy-7nIKUtwlQ7P0IrQW3sDA;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/permission/-$$Lambda$7PDzWy-7nIKUtwlQ7P0IrQW3sDA;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/permission/-$$Lambda$7PDzWy-7nIKUtwlQ7P0IrQW3sDA;->INSTANCE:Lcom/callapp/contacts/manager/permission/-$$Lambda$7PDzWy-7nIKUtwlQ7P0IrQW3sDA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fire(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;

    check-cast p2, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;->onPermissionDenied(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method
