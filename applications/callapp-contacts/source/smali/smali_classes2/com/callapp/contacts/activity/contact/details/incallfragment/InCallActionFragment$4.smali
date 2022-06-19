.class Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/util/i<",
        "Lcom/google/android/exoplayer2/ExoPlaybackException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$4;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Throwable;)Landroid/util/Pair;
    .locals 1

    .line 286
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 1289
    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 1290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
