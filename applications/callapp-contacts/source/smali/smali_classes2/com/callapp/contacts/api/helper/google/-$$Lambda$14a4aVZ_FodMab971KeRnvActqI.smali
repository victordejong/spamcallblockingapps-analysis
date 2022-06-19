.class public final synthetic Lcom/callapp/contacts/api/helper/google/-$$Lambda$14a4aVZ_FodMab971KeRnvActqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/api/helper/google/GoogleHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/api/helper/google/GoogleHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/google/-$$Lambda$14a4aVZ_FodMab971KeRnvActqI;->f$0:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/google/-$$Lambda$14a4aVZ_FodMab971KeRnvActqI;->f$0:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method
