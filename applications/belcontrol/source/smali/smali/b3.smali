.class public final synthetic Lb3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Landroidx/browser/customtabs/CustomTabsService$a;

.field public final synthetic b:Li3;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/CustomTabsService$a;Li3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3;->a:Landroidx/browser/customtabs/CustomTabsService$a;

    iput-object p2, p0, Lb3;->b:Li3;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lb3;->a:Landroidx/browser/customtabs/CustomTabsService$a;

    iget-object v1, p0, Lb3;->b:Li3;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsService$a;->d(Li3;)V

    return-void
.end method
