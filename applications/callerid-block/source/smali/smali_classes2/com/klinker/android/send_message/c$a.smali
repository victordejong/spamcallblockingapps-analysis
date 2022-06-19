.class public final Lcom/klinker/android/send_message/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/klinker/android/send_message/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/klinker/android/send_message/c$a;->a:[B

    iput-object p2, p0, Lcom/klinker/android/send_message/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/klinker/android/send_message/c$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/c$a;->a:[B

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/c$a;->c:Ljava/lang/String;

    return-object v0
.end method
