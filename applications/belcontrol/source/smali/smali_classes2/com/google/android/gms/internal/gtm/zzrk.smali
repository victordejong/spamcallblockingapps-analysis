.class public Lcom/google/android/gms/internal/gtm/zzrk;
.super Ljava/io/IOException;
.source ""


# instance fields
.field private zzbbk:Lcom/google/android/gms/internal/gtm/zzsk;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzbbk:Lcom/google/android/gms/internal/gtm/zzsk;

    return-void
.end method

.method public static zzpp()Lcom/google/android/gms/internal/gtm/zzrk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzpq()Lcom/google/android/gms/internal/gtm/zzrk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzpr()Lcom/google/android/gms/internal/gtm/zzrk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzps()Lcom/google/android/gms/internal/gtm/zzrk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzpt()Lcom/google/android/gms/internal/gtm/zzrl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrl;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzpu()Lcom/google/android/gms/internal/gtm/zzrk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzpv()Lcom/google/android/gms/internal/gtm/zzrk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzpw()Lcom/google/android/gms/internal/gtm/zzrk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/internal/gtm/zzsk;)Lcom/google/android/gms/internal/gtm/zzrk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzbbk:Lcom/google/android/gms/internal/gtm/zzsk;

    return-object p0
.end method
