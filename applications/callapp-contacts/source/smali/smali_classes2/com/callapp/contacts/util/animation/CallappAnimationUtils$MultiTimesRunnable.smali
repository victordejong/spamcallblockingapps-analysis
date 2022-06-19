.class Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiTimesRunnable"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private final c:I

.field private final d:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;IILjava/lang/Runnable;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;->a:Landroid/graphics/drawable/Drawable;

    .line 351
    iput p3, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;->b:I

    .line 352
    iput p2, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;->c:I

    .line 353
    iput-object p4, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;->d:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;IILjava/lang/Runnable;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;-><init>(Landroid/graphics/drawable/Drawable;IILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 362
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;->b:I

    if-nez v0, :cond_1

    .line 364
    invoke-static {}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 366
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
