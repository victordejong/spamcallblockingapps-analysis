.class Lcom/amazonaws/regions/RegionDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "af-south-1"

    const-string v3, "amazonaws.com"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "autoscaling"

    const-string v4, "autoscaling.af-south-1.amazonaws.com"

    .line 30
    invoke-static {v1, v2, v4}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dynamodb"

    const-string v5, "dynamodb.af-south-1.amazonaws.com"

    .line 31
    invoke-static {v1, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ec2"

    const-string v6, "ec2.af-south-1.amazonaws.com"

    .line 32
    invoke-static {v1, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "elasticloadbalancing"

    const-string v7, "elasticloadbalancing.af-south-1.amazonaws.com"

    .line 33
    invoke-static {v1, v6, v7}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "kms"

    const-string v8, "kms.af-south-1.amazonaws.com"

    .line 35
    invoke-static {v1, v7, v8}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "lambda"

    const-string v9, "lambda.af-south-1.amazonaws.com"

    .line 36
    invoke-static {v1, v8, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "logs"

    const-string v10, "logs.af-south-1.amazonaws.com"

    .line 37
    invoke-static {v1, v9, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "s3"

    const-string v11, "s3.af-south-1.amazonaws.com"

    .line 38
    invoke-static {v1, v10, v11}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "sns"

    const-string v12, "sns.af-south-1.amazonaws.com"

    .line 39
    invoke-static {v1, v11, v12}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "sqs"

    const-string v13, "sqs.af-south-1.amazonaws.com"

    .line 40
    invoke-static {v1, v12, v13}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v13, "ap-northeast-1"

    invoke-direct {v1, v13, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v13, "autoscaling.ap-northeast-1.amazonaws.com"

    .line 44
    invoke-static {v1, v2, v13}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "cognito-identity"

    const-string v14, "cognito-identity.ap-northeast-1.amazonaws.com"

    .line 45
    invoke-static {v1, v13, v14}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "cognito-idp"

    const-string v15, "cognito-idp.ap-northeast-1.amazonaws.com"

    .line 47
    invoke-static {v1, v14, v15}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "cognito-sync"

    move-object/from16 v16, v14

    const-string v14, "cognito-sync.ap-northeast-1.amazonaws.com"

    .line 48
    invoke-static {v1, v15, v14}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "data.iot"

    move-object/from16 v17, v15

    const-string v15, "data.iot.ap-northeast-1.amazonaws.com"

    .line 50
    invoke-static {v1, v14, v15}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "dynamodb.ap-northeast-1.amazonaws.com"

    .line 51
    invoke-static {v1, v4, v15}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "ec2.ap-northeast-1.amazonaws.com"

    .line 52
    invoke-static {v1, v5, v15}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "elasticloadbalancing.ap-northeast-1.amazonaws.com"

    .line 53
    invoke-static {v1, v6, v15}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "firehose"

    move-object/from16 v18, v6

    const-string v6, "firehose.ap-northeast-1.amazonaws.com"

    .line 55
    invoke-static {v1, v15, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "iot"

    move-object/from16 v19, v15

    const-string v15, "iot.ap-northeast-1.amazonaws.com"

    .line 56
    invoke-static {v1, v6, v15}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "kinesis"

    move-object/from16 v20, v6

    const-string v6, "kinesis.ap-northeast-1.amazonaws.com"

    .line 57
    invoke-static {v1, v15, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kms.ap-northeast-1.amazonaws.com"

    .line 58
    invoke-static {v1, v7, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lambda.ap-northeast-1.amazonaws.com"

    .line 59
    invoke-static {v1, v8, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "logs.ap-northeast-1.amazonaws.com"

    .line 60
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "polly"

    move-object/from16 v21, v9

    const-string v9, "polly.ap-northeast-1.amazonaws.com"

    .line 61
    invoke-static {v1, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "s3.ap-northeast-1.amazonaws.com"

    .line 62
    invoke-static {v1, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sdb"

    move-object/from16 v22, v10

    const-string v10, "sdb.ap-northeast-1.amazonaws.com"

    .line 63
    invoke-static {v1, v9, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sns.ap-northeast-1.amazonaws.com"

    .line 64
    invoke-static {v1, v11, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sqs.ap-northeast-1.amazonaws.com"

    .line 65
    invoke-static {v1, v12, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sts"

    move-object/from16 v23, v9

    const-string v9, "sts.amazonaws.com"

    .line 66
    invoke-static {v1, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/amazonaws/regions/Region;

    move-object/from16 v24, v9

    const-string v9, "ap-northeast-2"

    invoke-direct {v1, v9, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "autoscaling.ap-northeast-2.amazonaws.com"

    .line 70
    invoke-static {v1, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-identity.ap-northeast-2.amazonaws.com"

    .line 71
    invoke-static {v1, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-idp.ap-northeast-2.amazonaws.com"

    move-object/from16 v25, v13

    move-object/from16 v13, v16

    .line 73
    invoke-static {v1, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-sync.ap-northeast-2.amazonaws.com"

    move-object/from16 v13, v17

    .line 74
    invoke-static {v1, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "data.iot.ap-northeast-2.amazonaws.com"

    .line 76
    invoke-static {v1, v14, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dynamodb.ap-northeast-2.amazonaws.com"

    .line 77
    invoke-static {v1, v4, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ec2.ap-northeast-2.amazonaws.com"

    .line 78
    invoke-static {v1, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "elasticloadbalancing.ap-northeast-2.amazonaws.com"

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    .line 79
    invoke-static {v1, v14, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "iot.ap-northeast-2.amazonaws.com"

    move-object/from16 v14, v20

    .line 81
    invoke-static {v1, v14, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kinesis.ap-northeast-2.amazonaws.com"

    .line 82
    invoke-static {v1, v15, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kms.ap-northeast-2.amazonaws.com"

    .line 83
    invoke-static {v1, v7, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "lambda.ap-northeast-2.amazonaws.com"

    .line 84
    invoke-static {v1, v8, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "logs.ap-northeast-2.amazonaws.com"

    move-object/from16 v14, v21

    .line 85
    invoke-static {v1, v14, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "polly.ap-northeast-2.amazonaws.com"

    .line 86
    invoke-static {v1, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "s3.ap-northeast-2.amazonaws.com"

    move-object/from16 v21, v6

    move-object/from16 v6, v22

    .line 87
    invoke-static {v1, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sns.ap-northeast-2.amazonaws.com"

    .line 88
    invoke-static {v1, v11, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sqs.ap-northeast-2.amazonaws.com"

    .line 89
    invoke-static {v1, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sts.ap-northeast-2.amazonaws.com"

    .line 90
    invoke-static {v1, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v9, "ap-south-1"

    invoke-direct {v1, v9, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "autoscaling.ap-south-1.amazonaws.com"

    .line 94
    invoke-static {v1, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-identity.ap-south-1.amazonaws.com"

    move-object/from16 v22, v2

    move-object/from16 v2, v25

    .line 95
    invoke-static {v1, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-idp.ap-south-1.amazonaws.com"

    move-object/from16 v2, v16

    .line 97
    invoke-static {v1, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-sync.ap-south-1.amazonaws.com"

    .line 98
    invoke-static {v1, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dynamodb.ap-south-1.amazonaws.com"

    .line 99
    invoke-static {v1, v4, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ec2.ap-south-1.amazonaws.com"

    .line 100
    invoke-static {v1, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "elasticloadbalancing.ap-south-1.amazonaws.com"

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .line 101
    invoke-static {v1, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kinesis.ap-south-1.amazonaws.com"

    .line 103
    invoke-static {v1, v15, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kms.ap-south-1.amazonaws.com"

    .line 104
    invoke-static {v1, v7, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "lambda.ap-south-1.amazonaws.com"

    .line 105
    invoke-static {v1, v8, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "logs.ap-south-1.amazonaws.com"

    .line 106
    invoke-static {v1, v14, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "polly.ap-south-1.amazonaws.com"

    move-object/from16 v18, v14

    move-object/from16 v14, v21

    .line 107
    invoke-static {v1, v14, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "s3.ap-south-1.amazonaws.com"

    .line 108
    invoke-static {v1, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sns.ap-south-1.amazonaws.com"

    .line 109
    invoke-static {v1, v11, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sqs.ap-south-1.amazonaws.com"

    .line 110
    invoke-static {v1, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v24

    .line 111
    invoke-static {v1, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v9, "ap-southeast-1"

    invoke-direct {v1, v9, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "autoscaling.ap-southeast-1.amazonaws.com"

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    .line 115
    invoke-static {v1, v0, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-identity.ap-southeast-1.amazonaws.com"

    move-object/from16 v0, v25

    .line 116
    invoke-static {v1, v0, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-idp.ap-southeast-1.amazonaws.com"

    .line 118
    invoke-static {v1, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-sync.ap-southeast-1.amazonaws.com"

    .line 119
    invoke-static {v1, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "data.iot.ap-southeast-1.amazonaws.com"

    move-object/from16 v25, v13

    move-object/from16 v13, v17

    .line 121
    invoke-static {v1, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dynamodb.ap-southeast-1.amazonaws.com"

    .line 122
    invoke-static {v1, v4, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ec2.ap-southeast-1.amazonaws.com"

    move-object/from16 v17, v4

    move-object/from16 v4, v16

    .line 123
    invoke-static {v1, v4, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "elasticloadbalancing.ap-southeast-1.amazonaws.com"

    .line 124
    invoke-static {v1, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "iot.ap-southeast-1.amazonaws.com"

    move-object/from16 v16, v5

    move-object/from16 v5, v20

    .line 126
    invoke-static {v1, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kinesis.ap-southeast-1.amazonaws.com"

    .line 127
    invoke-static {v1, v15, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kms.ap-southeast-1.amazonaws.com"

    .line 128
    invoke-static {v1, v7, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "lambda.ap-southeast-1.amazonaws.com"

    .line 129
    invoke-static {v1, v8, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "logs.ap-southeast-1.amazonaws.com"

    move-object/from16 v20, v8

    move-object/from16 v8, v18

    .line 130
    invoke-static {v1, v8, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "polly.ap-southeast-1.amazonaws.com"

    .line 131
    invoke-static {v1, v14, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "s3.ap-southeast-1.amazonaws.com"

    .line 132
    invoke-static {v1, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sdb.ap-southeast-1.amazonaws.com"

    move-object/from16 v18, v6

    move-object/from16 v6, v23

    .line 133
    invoke-static {v1, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sns.ap-southeast-1.amazonaws.com"

    .line 134
    invoke-static {v1, v11, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sqs.ap-southeast-1.amazonaws.com"

    .line 135
    invoke-static {v1, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v24

    .line 136
    invoke-static {v1, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v9, "ap-southeast-2"

    invoke-direct {v1, v9, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v21

    .line 139
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "autoscaling.ap-southeast-2.amazonaws.com"

    move-object/from16 v23, v3

    move-object/from16 v3, v22

    .line 140
    invoke-static {v1, v3, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-identity.ap-southeast-2.amazonaws.com"

    .line 141
    invoke-static {v1, v0, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-idp.ap-southeast-2.amazonaws.com"

    .line 143
    invoke-static {v1, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cognito-sync.ap-southeast-2.amazonaws.com"

    move-object/from16 v22, v2

    move-object/from16 v2, v25

    .line 144
    invoke-static {v1, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "data.iot.ap-southeast-2.amazonaws.com"

    .line 146
    invoke-static {v1, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dynamodb.ap-southeast-2.amazonaws.com"

    move-object/from16 v25, v13

    move-object/from16 v13, v17

    .line 147
    invoke-static {v1, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ec2.ap-southeast-2.amazonaws.com"

    .line 148
    invoke-static {v1, v4, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "elasticloadbalancing.ap-southeast-2.amazonaws.com"

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    .line 149
    invoke-static {v1, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "iot.ap-southeast-2.amazonaws.com"

    .line 151
    invoke-static {v1, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kinesis.ap-southeast-2.amazonaws.com"

    .line 152
    invoke-static {v1, v15, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kms.ap-southeast-2.amazonaws.com"

    .line 153
    invoke-static {v1, v7, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "lambda.ap-southeast-2.amazonaws.com"

    move-object/from16 v16, v5

    move-object/from16 v5, v20

    .line 154
    invoke-static {v1, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "logs.ap-southeast-2.amazonaws.com"

    .line 155
    invoke-static {v1, v8, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "polly.ap-southeast-2.amazonaws.com"

    .line 156
    invoke-static {v1, v14, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "s3.ap-southeast-2.amazonaws.com"

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    .line 157
    invoke-static {v1, v0, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sdb.ap-southeast-2.amazonaws.com"

    .line 158
    invoke-static {v1, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sns.ap-southeast-2.amazonaws.com"

    .line 159
    invoke-static {v1, v11, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sqs.ap-southeast-2.amazonaws.com"

    .line 160
    invoke-static {v1, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v24

    .line 161
    invoke-static {v1, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v1, Lcom/amazonaws/regions/Region;

    move-object/from16 v18, v6

    const-string v6, "ca-central-1"

    move-object/from16 v9, v23

    invoke-direct {v1, v6, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v21

    .line 164
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.ca-central-1.amazonaws.com"

    .line 165
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dynamodb.ca-central-1.amazonaws.com"

    .line 166
    invoke-static {v1, v13, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ec2.ca-central-1.amazonaws.com"

    .line 167
    invoke-static {v1, v4, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "elasticloadbalancing.ca-central-1.amazonaws.com"

    .line 168
    invoke-static {v1, v2, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kinesis.ca-central-1.amazonaws.com"

    .line 170
    invoke-static {v1, v15, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kms.ca-central-1.amazonaws.com"

    .line 171
    invoke-static {v1, v7, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lambda.ca-central-1.amazonaws.com"

    .line 172
    invoke-static {v1, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "logs.ca-central-1.amazonaws.com"

    .line 173
    invoke-static {v1, v8, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "polly.ca-central-1.amazonaws.com"

    .line 174
    invoke-static {v1, v14, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "s3.ca-central-1.amazonaws.com"

    .line 175
    invoke-static {v1, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sns.ca-central-1.amazonaws.com"

    .line 176
    invoke-static {v1, v11, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sqs.ca-central-1.amazonaws.com"

    .line 177
    invoke-static {v1, v12, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v24

    .line 178
    invoke-static {v1, v10, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v6, "eu-central-1"

    invoke-direct {v1, v6, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v21

    .line 181
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.eu-central-1.amazonaws.com"

    .line 182
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cognito-identity.eu-central-1.amazonaws.com"

    move-object/from16 v23, v3

    move-object/from16 v3, v20

    .line 183
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cognito-idp.eu-central-1.amazonaws.com"

    move-object/from16 v3, v22

    .line 185
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cognito-sync.eu-central-1.amazonaws.com"

    move-object/from16 v3, v17

    .line 186
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "data.iot.eu-central-1.amazonaws.com"

    move-object/from16 v3, v25

    .line 187
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dynamodb.eu-central-1.amazonaws.com"

    .line 188
    invoke-static {v1, v13, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ec2.eu-central-1.amazonaws.com"

    .line 189
    invoke-static {v1, v4, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "elasticloadbalancing.eu-central-1.amazonaws.com"

    .line 190
    invoke-static {v1, v2, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "firehose.eu-central-1.amazonaws.com"

    move-object/from16 v3, v19

    .line 192
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "iot.eu-central-1.amazonaws.com"

    move-object/from16 v3, v16

    .line 193
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kinesis.eu-central-1.amazonaws.com"

    .line 194
    invoke-static {v1, v15, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kms.eu-central-1.amazonaws.com"

    .line 195
    invoke-static {v1, v7, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lambda.eu-central-1.amazonaws.com"

    .line 196
    invoke-static {v1, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "logs.eu-central-1.amazonaws.com"

    .line 197
    invoke-static {v1, v8, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "polly.eu-central-1.amazonaws.com"

    .line 198
    invoke-static {v1, v14, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "s3.eu-central-1.amazonaws.com"

    .line 199
    invoke-static {v1, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sns.eu-central-1.amazonaws.com"

    .line 200
    invoke-static {v1, v11, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sqs.eu-central-1.amazonaws.com"

    .line 201
    invoke-static {v1, v12, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v24

    .line 202
    invoke-static {v1, v10, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v6, "eu-south-1"

    invoke-direct {v1, v6, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v21

    .line 205
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v10

    const-string v10, "autoscaling.eu-south-1.amazonaws.com"

    move-object/from16 v21, v14

    move-object/from16 v14, v23

    .line 206
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "dynamodb.eu-south-1.amazonaws.com"

    .line 207
    invoke-static {v1, v13, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "ec2.eu-south-1.amazonaws.com"

    .line 208
    invoke-static {v1, v4, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "elasticloadbalancing.eu-south-1.amazonaws.com"

    .line 209
    invoke-static {v1, v2, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "lambda.eu-south-1.amazonaws.com"

    .line 211
    invoke-static {v1, v5, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "logs.eu-south-1.amazonaws.com"

    .line 212
    invoke-static {v1, v8, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "s3.eu-south-1.amazonaws.com"

    .line 213
    invoke-static {v1, v0, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sns.eu-south-1.amazonaws.com"

    .line 214
    invoke-static {v1, v11, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sqs.eu-south-1.amazonaws.com"

    .line 215
    invoke-static {v1, v12, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v10, "eu-west-1"

    invoke-direct {v1, v10, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "autoscaling.eu-west-1.amazonaws.com"

    .line 219
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cognito-identity.eu-west-1.amazonaws.com"

    move-object/from16 v14, v20

    .line 220
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cognito-idp.eu-west-1.amazonaws.com"

    move-object/from16 v14, v22

    .line 222
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cognito-sync.eu-west-1.amazonaws.com"

    move-object/from16 v14, v17

    .line 223
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "data.iot.eu-west-1.amazonaws.com"

    move-object/from16 v14, v25

    .line 224
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "dynamodb.eu-west-1.amazonaws.com"

    .line 225
    invoke-static {v1, v13, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "ec2.eu-west-1.amazonaws.com"

    .line 226
    invoke-static {v1, v4, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "elasticloadbalancing.eu-west-1.amazonaws.com"

    .line 227
    invoke-static {v1, v2, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "email"

    const-string v14, "email.eu-west-1.amazonaws.com"

    .line 229
    invoke-static {v1, v10, v14}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "firehose.eu-west-1.amazonaws.com"

    move-object/from16 v14, v19

    .line 230
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "iot.eu-west-1.amazonaws.com"

    .line 231
    invoke-static {v1, v3, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "kinesis.eu-west-1.amazonaws.com"

    .line 232
    invoke-static {v1, v15, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "kms.eu-west-1.amazonaws.com"

    .line 233
    invoke-static {v1, v7, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "lambda.eu-west-1.amazonaws.com"

    .line 234
    invoke-static {v1, v5, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "logs.eu-west-1.amazonaws.com"

    .line 235
    invoke-static {v1, v8, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "machinelearning"

    const-string v14, "machinelearning.eu-west-1.amazonaws.com"

    .line 236
    invoke-static {v1, v10, v14}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "polly.eu-west-1.amazonaws.com"

    move-object/from16 v14, v21

    .line 238
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "rekognition"

    const-string v14, "rekognition.eu-west-1.amazonaws.com"

    .line 239
    invoke-static {v1, v10, v14}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "s3.eu-west-1.amazonaws.com"

    .line 240
    invoke-static {v1, v0, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sdb.eu-west-1.amazonaws.com"

    move-object/from16 v14, v18

    .line 241
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sns.eu-west-1.amazonaws.com"

    .line 242
    invoke-static {v1, v11, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sqs.eu-west-1.amazonaws.com"

    .line 243
    invoke-static {v1, v12, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, v16

    move-object/from16 v10, v24

    .line 244
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v10, "eu-west-2"

    invoke-direct {v1, v10, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "autoscaling.eu-west-2.amazonaws.com"

    move-object/from16 v16, v6

    move-object/from16 v6, v23

    .line 248
    invoke-static {v1, v6, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cognito-identity.eu-west-2.amazonaws.com"

    move-object/from16 v6, v20

    .line 249
    invoke-static {v1, v6, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cognito-idp.eu-west-2.amazonaws.com"

    move-object/from16 v6, v22

    .line 251
    invoke-static {v1, v6, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cognito-sync.eu-west-2.amazonaws.com"

    move-object/from16 v6, v17

    .line 252
    invoke-static {v1, v6, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "dynamodb.eu-west-2.amazonaws.com"

    .line 253
    invoke-static {v1, v13, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "ec2.eu-west-2.amazonaws.com"

    .line 254
    invoke-static {v1, v4, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "elasticloadbalancing.eu-west-2.amazonaws.com"

    .line 255
    invoke-static {v1, v2, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "iot.eu-west-2.amazonaws.com"

    .line 257
    invoke-static {v1, v3, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "kinesis.eu-west-2.amazonaws.com"

    .line 258
    invoke-static {v1, v15, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "kms.eu-west-2.amazonaws.com"

    .line 259
    invoke-static {v1, v7, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "lambda.eu-west-2.amazonaws.com"

    .line 260
    invoke-static {v1, v5, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "logs.eu-west-2.amazonaws.com"

    .line 261
    invoke-static {v1, v8, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "polly.eu-west-2.amazonaws.com"

    move-object/from16 v17, v3

    move-object/from16 v3, v21

    .line 262
    invoke-static {v1, v3, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "s3.eu-west-2.amazonaws.com"

    .line 263
    invoke-static {v1, v0, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sns.eu-west-2.amazonaws.com"

    .line 264
    invoke-static {v1, v11, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sqs.eu-west-2.amazonaws.com"

    .line 265
    invoke-static {v1, v12, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v24

    .line 266
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v1, Lcom/amazonaws/regions/Region;

    move-object/from16 v21, v6

    const-string v6, "eu-west-3"

    invoke-direct {v1, v6, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v16

    .line 269
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.eu-west-3.amazonaws.com"

    move-object/from16 v24, v9

    move-object/from16 v9, v23

    .line 270
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dynamodb.eu-west-3.amazonaws.com"

    .line 271
    invoke-static {v1, v13, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ec2.eu-west-3.amazonaws.com"

    .line 272
    invoke-static {v1, v4, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "elasticloadbalancing.eu-west-3.amazonaws.com"

    .line 273
    invoke-static {v1, v2, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kinesis.eu-west-3.amazonaws.com"

    .line 275
    invoke-static {v1, v15, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kms.eu-west-3.amazonaws.com"

    .line 276
    invoke-static {v1, v7, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lambda.eu-west-3.amazonaws.com"

    .line 277
    invoke-static {v1, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "logs.eu-west-3.amazonaws.com"

    .line 278
    invoke-static {v1, v8, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "polly.eu-west-3.amazonaws.com"

    .line 279
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "s3.eu-west-3.amazonaws.com"

    .line 280
    invoke-static {v1, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sns.eu-west-3.amazonaws.com"

    .line 281
    invoke-static {v1, v11, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sqs.eu-west-3.amazonaws.com"

    .line 282
    invoke-static {v1, v12, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {v1, v14, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v6, "sa-east-1"

    move-object/from16 v23, v10

    move-object/from16 v10, v24

    invoke-direct {v1, v6, v10}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v16

    .line 286
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.sa-east-1.amazonaws.com"

    .line 287
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dynamodb.sa-east-1.amazonaws.com"

    .line 288
    invoke-static {v1, v13, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ec2.sa-east-1.amazonaws.com"

    .line 289
    invoke-static {v1, v4, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "elasticloadbalancing.sa-east-1.amazonaws.com"

    .line 290
    invoke-static {v1, v2, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kinesis.sa-east-1.amazonaws.com"

    .line 292
    invoke-static {v1, v15, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kms.sa-east-1.amazonaws.com"

    .line 293
    invoke-static {v1, v7, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lambda.sa-east-1.amazonaws.com"

    .line 294
    invoke-static {v1, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "logs.sa-east-1.amazonaws.com"

    .line 295
    invoke-static {v1, v8, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "polly.sa-east-1.amazonaws.com"

    .line 296
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "s3.sa-east-1.amazonaws.com"

    .line 297
    invoke-static {v1, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sdb.sa-east-1.amazonaws.com"

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    .line 298
    invoke-static {v1, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sns.sa-east-1.amazonaws.com"

    .line 299
    invoke-static {v1, v11, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sqs.sa-east-1.amazonaws.com"

    .line 300
    invoke-static {v1, v12, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v23

    .line 301
    invoke-static {v1, v14, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v6, "us-east-1"

    invoke-direct {v1, v6, v10}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v16

    .line 304
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.us-east-1.amazonaws.com"

    .line 305
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cognito-identity.us-east-1.amazonaws.com"

    move-object/from16 v18, v9

    move-object/from16 v9, v20

    .line 306
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cognito-idp.us-east-1.amazonaws.com"

    move-object/from16 v9, v22

    .line 308
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cognito-sync.us-east-1.amazonaws.com"

    move-object/from16 v9, v21

    .line 309
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "data.iot.us-east-1.amazonaws.com"

    move-object/from16 v9, v25

    .line 310
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dynamodb.us-east-1.amazonaws.com"

    .line 311
    invoke-static {v1, v13, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ec2.us-east-1.amazonaws.com"

    .line 312
    invoke-static {v1, v4, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "elasticloadbalancing.us-east-1.amazonaws.com"

    .line 313
    invoke-static {v1, v2, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "email"

    const-string v9, "email.us-east-1.amazonaws.com"

    .line 315
    invoke-static {v1, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "firehose.us-east-1.amazonaws.com"

    move-object/from16 v9, v19

    .line 316
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "iot.us-east-1.amazonaws.com"

    move-object/from16 v9, v17

    .line 317
    invoke-static {v1, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kinesis.us-east-1.amazonaws.com"

    .line 318
    invoke-static {v1, v15, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kms.us-east-1.amazonaws.com"

    .line 319
    invoke-static {v1, v7, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lambda.us-east-1.amazonaws.com"

    .line 320
    invoke-static {v1, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "logs.us-east-1.amazonaws.com"

    .line 321
    invoke-static {v1, v8, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "machinelearning"

    move-object/from16 v17, v8

    const-string v8, "machinelearning.us-east-1.amazonaws.com"

    .line 322
    invoke-static {v1, v6, v8}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mobileanalytics"

    const-string v8, "mobileanalytics.us-east-1.amazonaws.com"

    .line 324
    invoke-static {v1, v6, v8}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "pinpoint"

    const-string v8, "pinpoint.us-east-1.amazonaws.com"

    .line 326
    invoke-static {v1, v6, v8}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "polly.us-east-1.amazonaws.com"

    .line 327
    invoke-static {v1, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "rekognition"

    const-string v8, "rekognition.us-east-1.amazonaws.com"

    .line 328
    invoke-static {v1, v6, v8}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "s3.amazonaws.com"

    move-object/from16 v8, v24

    .line 329
    invoke-static {v1, v8, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sdb.amazonaws.com"

    .line 330
    invoke-static {v1, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sns.us-east-1.amazonaws.com"

    .line 331
    invoke-static {v1, v11, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sqs.us-east-1.amazonaws.com"

    .line 332
    invoke-static {v1, v12, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v23

    .line 333
    invoke-static {v1, v14, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v1, Lcom/amazonaws/regions/Region;

    move-object/from16 v23, v0

    const-string v0, "us-east-2"

    invoke-direct {v1, v0, v10}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 336
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "autoscaling.us-east-2.amazonaws.com"

    move-object/from16 v24, v10

    move-object/from16 v10, v18

    .line 337
    invoke-static {v1, v10, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cognito-identity.us-east-2.amazonaws.com"

    move-object/from16 v10, v20

    .line 338
    invoke-static {v1, v10, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cognito-idp.us-east-2.amazonaws.com"

    move-object/from16 v10, v22

    .line 340
    invoke-static {v1, v10, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cognito-sync.us-east-2.amazonaws.com"

    move-object/from16 v10, v21

    .line 341
    invoke-static {v1, v10, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dynamodb.us-east-2.amazonaws.com"

    .line 342
    invoke-static {v1, v13, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ec2.us-east-2.amazonaws.com"

    .line 343
    invoke-static {v1, v4, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "elasticloadbalancing.us-east-2.amazonaws.com"

    .line 344
    invoke-static {v1, v2, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "firehose.us-east-2.amazonaws.com"

    move-object/from16 v10, v19

    .line 346
    invoke-static {v1, v10, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iot.us-east-2.amazonaws.com"

    .line 347
    invoke-static {v1, v9, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kinesis.us-east-2.amazonaws.com"

    .line 348
    invoke-static {v1, v15, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kms.us-east-2.amazonaws.com"

    .line 349
    invoke-static {v1, v7, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lambda.us-east-2.amazonaws.com"

    .line 350
    invoke-static {v1, v5, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logs.us-east-2.amazonaws.com"

    move-object/from16 v19, v9

    move-object/from16 v9, v17

    .line 351
    invoke-static {v1, v9, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "polly.us-east-2.amazonaws.com"

    .line 352
    invoke-static {v1, v3, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s3.us-east-2.amazonaws.com"

    .line 353
    invoke-static {v1, v8, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sns.us-east-2.amazonaws.com"

    .line 354
    invoke-static {v1, v11, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sqs.us-east-2.amazonaws.com"

    .line 355
    invoke-static {v1, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {v1, v14, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Lcom/amazonaws/regions/Region;

    const-string v1, "us-west-1"

    move-object/from16 v17, v10

    move-object/from16 v10, v24

    invoke-direct {v0, v1, v10}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 359
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "autoscaling.us-west-1.amazonaws.com"

    move-object/from16 v10, v18

    .line 360
    invoke-static {v0, v10, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dynamodb.us-west-1.amazonaws.com"

    .line 361
    invoke-static {v0, v13, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ec2.us-west-1.amazonaws.com"

    .line 362
    invoke-static {v0, v4, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "elasticloadbalancing.us-west-1.amazonaws.com"

    .line 363
    invoke-static {v0, v2, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "kinesis.us-west-1.amazonaws.com"

    .line 365
    invoke-static {v0, v15, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "kms.us-west-1.amazonaws.com"

    .line 366
    invoke-static {v0, v7, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lambda.us-west-1.amazonaws.com"

    .line 367
    invoke-static {v0, v5, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logs.us-west-1.amazonaws.com"

    .line 368
    invoke-static {v0, v9, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "polly.us-west-1.amazonaws.com"

    .line 369
    invoke-static {v0, v3, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s3.us-west-1.amazonaws.com"

    .line 370
    invoke-static {v0, v8, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdb.us-west-1.amazonaws.com"

    move-object/from16 v18, v8

    move-object/from16 v8, v23

    .line 371
    invoke-static {v0, v8, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sns.us-west-1.amazonaws.com"

    .line 372
    invoke-static {v0, v11, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sqs.us-west-1.amazonaws.com"

    .line 373
    invoke-static {v0, v12, v1}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {v0, v14, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v0, Lcom/amazonaws/regions/Region;

    const-string v1, "us-west-2"

    move-object/from16 v23, v6

    move-object/from16 v6, v24

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 377
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.us-west-2.amazonaws.com"

    .line 378
    invoke-static {v0, v10, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cognito-identity.us-west-2.amazonaws.com"

    move-object/from16 v16, v10

    move-object/from16 v10, v20

    .line 379
    invoke-static {v0, v10, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cognito-idp.us-west-2.amazonaws.com"

    move-object/from16 v10, v22

    .line 381
    invoke-static {v0, v10, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cognito-sync.us-west-2.amazonaws.com"

    move-object/from16 v10, v21

    .line 382
    invoke-static {v0, v10, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "data.iot.us-west-2.amazonaws.com"

    move-object/from16 v10, v25

    .line 383
    invoke-static {v0, v10, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dynamodb.us-west-2.amazonaws.com"

    .line 384
    invoke-static {v0, v13, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ec2.us-west-2.amazonaws.com"

    .line 385
    invoke-static {v0, v4, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "elasticloadbalancing.us-west-2.amazonaws.com"

    .line 386
    invoke-static {v0, v2, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "email"

    const-string v10, "email.us-west-2.amazonaws.com"

    .line 388
    invoke-static {v0, v6, v10}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "firehose.us-west-2.amazonaws.com"

    move-object/from16 v10, v17

    .line 389
    invoke-static {v0, v10, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "iot.us-west-2.amazonaws.com"

    move-object/from16 v10, v19

    .line 390
    invoke-static {v0, v10, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kinesis.us-west-2.amazonaws.com"

    .line 391
    invoke-static {v0, v15, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "kms.us-west-2.amazonaws.com"

    .line 392
    invoke-static {v0, v7, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lambda.us-west-2.amazonaws.com"

    .line 393
    invoke-static {v0, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "logs.us-west-2.amazonaws.com"

    .line 394
    invoke-static {v0, v9, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "polly.us-west-2.amazonaws.com"

    .line 395
    invoke-static {v0, v3, v6}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "rekognition"

    move-object/from16 v19, v3

    const-string v3, "rekognition.us-west-2.amazonaws.com"

    .line 396
    invoke-static {v0, v6, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "s3.us-west-2.amazonaws.com"

    move-object/from16 v6, v18

    .line 397
    invoke-static {v0, v6, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sdb.us-west-2.amazonaws.com"

    .line 398
    invoke-static {v0, v8, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sns.us-west-2.amazonaws.com"

    .line 399
    invoke-static {v0, v11, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sqs.us-west-2.amazonaws.com"

    .line 400
    invoke-static {v0, v12, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v23

    .line 401
    invoke-static {v0, v14, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v0, Lcom/amazonaws/regions/Region;

    move-object/from16 v23, v8

    const-string v8, "cn-north-1"

    move-object/from16 v18, v3

    const-string v3, "amazonaws.com.cn"

    invoke-direct {v0, v8, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "autoscaling.cn-north-1.amazonaws.com.cn"

    move-object/from16 v8, v16

    .line 405
    invoke-static {v0, v8, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cognito-identity.cn-north-1.amazonaws.com.cn"

    move-object/from16 v16, v7

    move-object/from16 v7, v20

    .line 406
    invoke-static {v0, v7, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dynamodb.cn-north-1.amazonaws.com.cn"

    .line 408
    invoke-static {v0, v13, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ec2.cn-north-1.amazonaws.com.cn"

    .line 409
    invoke-static {v0, v4, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "elasticloadbalancing.cn-north-1.amazonaws.com.cn"

    .line 410
    invoke-static {v0, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "iot.cn-north-1.amazonaws.com.cn"

    .line 412
    invoke-static {v0, v10, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "kinesis.cn-north-1.amazonaws.com.cn"

    .line 413
    invoke-static {v0, v15, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "lambda.cn-north-1.amazonaws.com.cn"

    .line 414
    invoke-static {v0, v5, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "logs.cn-north-1.amazonaws.com.cn"

    .line 415
    invoke-static {v0, v9, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "s3.cn-north-1.amazonaws.com.cn"

    .line 416
    invoke-static {v0, v6, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sns.cn-north-1.amazonaws.com.cn"

    .line 417
    invoke-static {v0, v11, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sqs.cn-north-1.amazonaws.com.cn"

    .line 418
    invoke-static {v0, v12, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sts.cn-north-1.amazonaws.com.cn"

    .line 419
    invoke-static {v0, v14, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v0, Lcom/amazonaws/regions/Region;

    const-string v3, "cn-northwest-1"

    const-string v7, "amazonaws.com.cn"

    invoke-direct {v0, v3, v7}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "autoscaling.cn-northwest-1.amazonaws.com.cn"

    .line 423
    invoke-static {v0, v8, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dynamodb.cn-northwest-1.amazonaws.com.cn"

    .line 425
    invoke-static {v0, v13, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ec2.cn-northwest-1.amazonaws.com.cn"

    .line 426
    invoke-static {v0, v4, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "elasticloadbalancing.cn-northwest-1.amazonaws.com.cn"

    .line 427
    invoke-static {v0, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "kinesis.cn-northwest-1.amazonaws.com.cn"

    .line 429
    invoke-static {v0, v15, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "logs.cn-northwest-1.amazonaws.com.cn"

    .line 430
    invoke-static {v0, v9, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "s3.cn-northwest-1.amazonaws.com.cn"

    .line 431
    invoke-static {v0, v6, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sns.cn-northwest-1.amazonaws.com.cn"

    .line 432
    invoke-static {v0, v11, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sqs.cn-northwest-1.amazonaws.com.cn"

    .line 433
    invoke-static {v0, v12, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sts.amazonaws.com.cn"

    .line 434
    invoke-static {v0, v14, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v0, Lcom/amazonaws/regions/Region;

    const-string v3, "us-gov-west-1"

    move-object/from16 v7, v24

    invoke-direct {v0, v3, v7}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "autoscaling.us-gov-west-1.amazonaws.com"

    .line 438
    invoke-static {v0, v8, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dynamodb.us-gov-west-1.amazonaws.com"

    .line 439
    invoke-static {v0, v13, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ec2.us-gov-west-1.amazonaws.com"

    .line 440
    invoke-static {v0, v4, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "elasticloadbalancing.us-gov-west-1.amazonaws.com"

    .line 441
    invoke-static {v0, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "kinesis.us-gov-west-1.amazonaws.com"

    .line 443
    invoke-static {v0, v15, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "kms.us-gov-west-1.amazonaws.com"

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    .line 444
    invoke-static {v0, v15, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "lambda.us-gov-west-1.amazonaws.com"

    .line 445
    invoke-static {v0, v5, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "logs.us-gov-west-1.amazonaws.com"

    .line 446
    invoke-static {v0, v9, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "rekognition"

    move-object/from16 v16, v9

    const-string v9, "rekognition.us-gov-west-1.amazonaws.com"

    .line 447
    invoke-static {v0, v3, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "s3.us-gov-west-1.amazonaws.com"

    .line 448
    invoke-static {v0, v6, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sns.us-gov-west-1.amazonaws.com"

    .line 449
    invoke-static {v0, v11, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sqs.us-gov-west-1.amazonaws.com"

    .line 450
    invoke-static {v0, v12, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 451
    invoke-static {v0, v14, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v0, Lcom/amazonaws/regions/Region;

    const-string v9, "eu-north-1"

    invoke-direct {v0, v9, v7}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "autoscaling.eu-north-1.amazonaws.com"

    .line 455
    invoke-static {v0, v8, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dynamodb.eu-north-1.amazonaws.com"

    .line 456
    invoke-static {v0, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ec2.eu-north-1.amazonaws.com"

    .line 457
    invoke-static {v0, v4, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "elasticloadbalancing.eu-north-1.amazonaws.com"

    .line 458
    invoke-static {v0, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "firehose.eu-north-1.amazonaws.com"

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .line 460
    invoke-static {v0, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "iot.eu-north-1.amazonaws.com"

    .line 461
    invoke-static {v0, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kinesis.eu-north-1.amazonaws.com"

    move-object/from16 v17, v10

    move-object/from16 v10, v24

    .line 462
    invoke-static {v0, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kms.eu-north-1.amazonaws.com"

    .line 463
    invoke-static {v0, v15, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "lambda.eu-north-1.amazonaws.com"

    .line 464
    invoke-static {v0, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "logs.eu-north-1.amazonaws.com"

    move-object/from16 v24, v5

    move-object/from16 v5, v16

    .line 465
    invoke-static {v0, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "s3.eu-north-1.amazonaws.com"

    .line 466
    invoke-static {v0, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sns.eu-north-1.amazonaws.com"

    .line 467
    invoke-static {v0, v11, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sqs.eu-north-1.amazonaws.com"

    .line 468
    invoke-static {v0, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {v0, v14, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v0, Lcom/amazonaws/regions/Region;

    const-string v9, "ap-east-1"

    invoke-direct {v0, v9, v7}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "autoscaling.ap-east-1.amazonaws.com"

    .line 473
    invoke-static {v0, v8, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dynamodb.ap-east-1.amazonaws.com"

    .line 474
    invoke-static {v0, v13, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ec2.ap-east-1.amazonaws.com"

    .line 475
    invoke-static {v0, v4, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "elasticloadbalancing.ap-east-1.amazonaws.com"

    move-object/from16 v16, v4

    move-object/from16 v4, v18

    .line 476
    invoke-static {v0, v4, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "firehose.ap-east-1.amazonaws.com"

    .line 478
    invoke-static {v0, v2, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kinesis.ap-east-1.amazonaws.com"

    .line 479
    invoke-static {v0, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "kms.ap-east-1.amazonaws.com"

    .line 480
    invoke-static {v0, v15, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "lambda.ap-east-1.amazonaws.com"

    move-object/from16 v18, v15

    move-object/from16 v15, v24

    .line 481
    invoke-static {v0, v15, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "logs.ap-east-1.amazonaws.com"

    .line 482
    invoke-static {v0, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "polly.ap-east-1.amazonaws.com"

    move-object/from16 v24, v5

    move-object/from16 v5, v19

    .line 483
    invoke-static {v0, v5, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "s3.ap-east-1.amazonaws.com"

    .line 484
    invoke-static {v0, v6, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sns.ap-east-1.amazonaws.com"

    .line 485
    invoke-static {v0, v11, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sqs.ap-east-1.amazonaws.com"

    .line 486
    invoke-static {v0, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {v0, v14, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v0, Lcom/amazonaws/regions/Region;

    const-string v9, "me-south-1"

    invoke-direct {v0, v9, v7}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "autoscaling.me-south-1.amazonaws.com"

    .line 492
    invoke-static {v0, v8, v7}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "cognito-identity.me-south-1.amazonaws.com"

    move-object/from16 v8, v20

    .line 493
    invoke-static {v0, v8, v7}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "cognito-idp.me-south-1.amazonaws.com"

    move-object/from16 v8, v22

    .line 495
    invoke-static {v0, v8, v7}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "cognito-sync.me-south-1.amazonaws.com"

    move-object/from16 v8, v21

    .line 496
    invoke-static {v0, v8, v7}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "data.iot.me-south-1.amazonaws.com"

    move-object/from16 v8, v25

    .line 498
    invoke-static {v0, v8, v7}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "dynamodb.me-south-1.amazonaws.com"

    .line 499
    invoke-static {v0, v13, v7}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ec2.me-south-1.amazonaws.com"

    move-object/from16 v8, v16

    .line 500
    invoke-static {v0, v8, v7}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "elasticloadbalancing.me-south-1.amazonaws.com"

    .line 501
    invoke-static {v0, v4, v7}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "firehose.me-south-1.amazonaws.com"

    .line 503
    invoke-static {v0, v2, v4}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iot.me-south-1.amazonaws.com"

    move-object/from16 v4, v17

    .line 504
    invoke-static {v0, v4, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis.me-south-1.amazonaws.com"

    .line 505
    invoke-static {v0, v10, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms.me-south-1.amazonaws.com"

    move-object/from16 v4, v18

    .line 506
    invoke-static {v0, v4, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda.me-south-1.amazonaws.com"

    .line 507
    invoke-static {v0, v15, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "logs.me-south-1.amazonaws.com"

    move-object/from16 v4, v24

    .line 508
    invoke-static {v0, v4, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "polly.me-south-1.amazonaws.com"

    .line 509
    invoke-static {v0, v5, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3.me-south-1.amazonaws.com"

    .line 510
    invoke-static {v0, v6, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdb.me-south-1.amazonaws.com"

    move-object/from16 v4, v23

    .line 511
    invoke-static {v0, v4, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns.me-south-1.amazonaws.com"

    .line 512
    invoke-static {v0, v11, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs.me-south-1.amazonaws.com"

    .line 513
    invoke-static {v0, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {v0, v14, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->c:Ljava/util/Map;

    .line 1104
    iget-object v1, p0, Lcom/amazonaws/regions/Region;->d:Ljava/util/Map;

    .line 1108
    iget-object p0, p0, Lcom/amazonaws/regions/Region;->e:Ljava/util/Map;

    .line 526
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
