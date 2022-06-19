.class public final synthetic Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$mr7wwXzJy0W8ZfjQzQ4yYfLm0eY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/advertisements/AdvertManager;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/advertisements/AdvertManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$mr7wwXzJy0W8ZfjQzQ4yYfLm0eY;->f$0:Lcom/telguarder/features/advertisements/AdvertManager;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$mr7wwXzJy0W8ZfjQzQ4yYfLm0eY;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$mr7wwXzJy0W8ZfjQzQ4yYfLm0eY;->f$0:Lcom/telguarder/features/advertisements/AdvertManager;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$mr7wwXzJy0W8ZfjQzQ4yYfLm0eY;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->lambda$updateAdvertCache$0$AdvertManager(Landroid/content/Context;)V

    return-void
.end method
