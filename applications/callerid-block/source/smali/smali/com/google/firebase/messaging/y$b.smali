.class final Lcom/google/firebase/messaging/y$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/messaging/y;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/messaging/y;

    iput-object p1, p0, Lcom/google/firebase/messaging/y$b;->a:Lcom/google/firebase/messaging/y;

    return-void
.end method


# virtual methods
.method a()Lcom/google/firebase/messaging/y;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/y$b;->a:Lcom/google/firebase/messaging/y;

    return-object v0
.end method
