.class public Lcom/callapp/contacts/manager/permission/PermissionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;,
        Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;

.field public b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 96
    sget-object v0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->CORE_PERMISSIONS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->arePermissionsGranted()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 92
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static get()Lcom/callapp/contacts/manager/permission/PermissionManager;
    .locals 1

    .line 25
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseActivity;Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 107
    iput-object p2, p0, Lcom/callapp/contacts/manager/permission/PermissionManager;->a:Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;

    .line 108
    iput-object p3, p0, Lcom/callapp/contacts/manager/permission/PermissionManager;->c:Ljava/lang/Runnable;

    .line 109
    sget-object p2, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->CORE_PERMISSIONS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-static {p2}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->access$000(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 111
    const-class p3, Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/lang/Class;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const/16 p3, 0x3039

    invoke-static {p1, p2, p3}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public final varargs a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 2

    .line 116
    iput-object p2, p0, Lcom/callapp/contacts/manager/permission/PermissionManager;->b:Ljava/lang/Runnable;

    .line 117
    iput-object p3, p0, Lcom/callapp/contacts/manager/permission/PermissionManager;->c:Ljava/lang/Runnable;

    .line 118
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    array-length p3, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p4, v0

    .line 120
    invoke-static {v1}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->access$000(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    const-class p3, Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/lang/Class;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const/16 p3, 0x3039

    invoke-static {p1, p2, p3}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getPermissionsString()Ljava/lang/String;
    .locals 6

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->values()[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, "Name: "

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Granted: "

    .line 35
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->arePermissionsGranted()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
