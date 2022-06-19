.class public final synthetic Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0;->f$2:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0;->f$2:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->lambda$openPhoneCallLogIfEnabledBySetting$0(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V

    return-void
.end method
