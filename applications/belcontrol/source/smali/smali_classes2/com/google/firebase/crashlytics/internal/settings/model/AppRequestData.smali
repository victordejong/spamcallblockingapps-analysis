.class public Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final appId:Ljava/lang/String;

.field public final buildVersion:Ljava/lang/String;

.field public final builtSdkVersion:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final googleAppId:Ljava/lang/String;

.field public final instanceIdentifier:Ljava/lang/String;

.field public final minSdkVersion:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final organizationId:Ljava/lang/String;

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->organizationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->googleAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->displayVersion:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->buildVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->instanceIdentifier:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->name:Ljava/lang/String;

    iput p8, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->source:I

    iput-object p9, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->minSdkVersion:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->builtSdkVersion:Ljava/lang/String;

    return-void
.end method
