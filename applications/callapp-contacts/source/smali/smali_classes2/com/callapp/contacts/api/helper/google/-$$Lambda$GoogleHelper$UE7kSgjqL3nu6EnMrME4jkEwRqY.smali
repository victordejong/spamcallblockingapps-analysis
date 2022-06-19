.class public final synthetic Lcom/callapp/contacts/api/helper/google/-$$Lambda$GoogleHelper$UE7kSgjqL3nu6EnMrME4jkEwRqY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/api/helper/google/GoogleHelper;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/google/-$$Lambda$GoogleHelper$UE7kSgjqL3nu6EnMrME4jkEwRqY;->f$0:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/google/-$$Lambda$GoogleHelper$UE7kSgjqL3nu6EnMrME4jkEwRqY;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/google/-$$Lambda$GoogleHelper$UE7kSgjqL3nu6EnMrME4jkEwRqY;->f$0:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/google/-$$Lambda$GoogleHelper$UE7kSgjqL3nu6EnMrME4jkEwRqY;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->lambda$UE7kSgjqL3nu6EnMrME4jkEwRqY(Lcom/callapp/contacts/api/helper/google/GoogleHelper;Landroid/app/Activity;Ljava/lang/Exception;)V

    return-void
.end method
